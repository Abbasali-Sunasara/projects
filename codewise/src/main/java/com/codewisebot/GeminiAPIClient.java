package com.codewisebot;

import com.google.gson.JsonObject;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import okhttp3.*;
import java.util.concurrent.TimeUnit;
import java.io.IOException;

public class GeminiAPIClient {
    private static final String API_KEY =System.getenv("API_KEY");
    private static final String GEMINI_API_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=" + API_KEY;

    public static String getGeminiResponse(String prompt) {
        OkHttpClient client = new OkHttpClient.Builder()
                .connectTimeout(60, TimeUnit.SECONDS) // Increase connection timeout
                .readTimeout(60, TimeUnit.SECONDS)    // Increase read timeout
                .writeTimeout(60, TimeUnit.SECONDS)   // Increase write timeout
                .build();

        // Correct JSON request format
        JsonObject requestBody = new JsonObject();
        JsonObject textPart = new JsonObject();
        textPart.addProperty("text", prompt);

        JsonArray parts = new JsonArray();
        parts.add(textPart);

        JsonObject content = new JsonObject();
        content.add("parts", parts);

        JsonArray contents = new JsonArray();
        contents.add(content);

        requestBody.add("contents", contents);

        Request request = new Request.Builder()
                .url(GEMINI_API_URL)
                .post(RequestBody.create(requestBody.toString(), MediaType.get("application/json")))
                .build();

        try (Response response = client.newCall(request).execute()) {
            if (!response.isSuccessful()) {
                return "Error: API responded with status " + response.code() + " - " + response.message();
            }

            String responseBody = response.body().string();
            System.out.println("Raw API Response: " + responseBody); // Debugging log

            JsonObject jsonResponse = JsonParser.parseString(responseBody).getAsJsonObject();
            JsonArray candidates = jsonResponse.getAsJsonArray("candidates");

            if (candidates != null && candidates.size() > 0) {
                String rawText = candidates.get(0)
                        .getAsJsonObject()
                        .get("content")
                        .getAsJsonObject()
                        .getAsJsonArray("parts")
                        .get(0)
                        .getAsJsonObject()
                        .get("text")
                        .getAsString();

                // Clean formatting
                String cleanedText = rawText
                        .replaceAll("(?m)^\\s*\\*\\s*", "")             // remove leading asterisks from bullet points
                        .replace("**", "")                              // remove markdown bold
                        .replaceAll("(?m)\\n{3,}", "\n\n")              // collapse 3+ newlines to max 2
                        .replaceAll("(?m)^([A-Za-z\\s]{2,30}:)", "\n") // add spacing before common section headers
                        .trim();

                return cleanedText;
            } else {
                return "Error: No response from Gemini API.";
            }




        } catch (IOException e) {
            return "Error: " + e.getMessage();
        }
    }
}

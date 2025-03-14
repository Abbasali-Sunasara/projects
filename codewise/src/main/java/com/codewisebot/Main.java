package com.codewisebot;

import static spark.Spark.*;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class Main {
    public static void main(String[] args) {
        port(4567); // Start the server on port 4567

        // Serve static files from src/main/resources/public
        staticFiles.location("/public");

        // Chatbot API Endpoint
        post("/chat", (req, res) -> {
            res.type("application/json");
            JsonObject requestBody = JsonParser.parseString(req.body()).getAsJsonObject();
            String userMessage = requestBody.get("message").getAsString();
            String botResponse = GeminiAPIClient.getGeminiResponse(userMessage);

            JsonObject jsonResponse = new JsonObject();
            jsonResponse.addProperty("response", botResponse);
            return jsonResponse.toString();
        });

        //  FIX: Redirect root ("/") directly to bot_index.html (without /public/)
        get("/", (req, res) -> {
            res.redirect("/bot_index.html");
            return null;
        });

        System.out.println("🚀 Server is running on http://localhost:4567");
    }
}

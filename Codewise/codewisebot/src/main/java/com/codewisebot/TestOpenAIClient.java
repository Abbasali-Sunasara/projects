package com.codewisebot;

public class TestOpenAIClient {
    public static void main(String[] args) {
        OpenAIClient bot = new OpenAIClient();
        String response = bot.getChatResponse("Hello, how are you?");
        System.out.println("Bot Response: " + response);
    }
}

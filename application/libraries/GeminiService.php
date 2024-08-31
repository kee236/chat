<?php

use Google\GenerativeAI\GenerativeModel;

class GeminiService 
{
    private $genAI;
    private $model;

    public function __construct($apiKey) 
    {
        $this->genAI = new GoogleGenerativeAI($apiKey);
        $this->model = $this->genAI.getGenerativeModel({ model: "gemini-pro" });
    }

    public function generateResponse($query, $chatHistory = []) 
    {
        try {
            $chat = $this->model->startChat({ history: $chatHistory });
            $result = $chat->sendMessage($query);
            $response = $result->response;
            $text = $response->text();
            return [
                'status' => 1,
                'response' => $text
            ];
        } catch (Exception $e) {
            return [
                'status' => 0,
                'response' => ''
            ];
        }
    }
}
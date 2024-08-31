<?php

use Google\Cloud\Dialogflow\V2\SessionsClient;
use Google\Cloud\Dialogflow\V2\TextInput;
use Google\Cloud\Dialogflow\V2\QueryInput;

class DialogflowService
{
    private $sessionsClient;
    private $projectId;

    public function __construct($projectId, $credentialsPath)
    {
        $this->projectId = $projectId;
        $this->sessionsClient = new SessionsClient([
            'credentials' => $credentialsPath
        ]);
    }

    public function detectIntent($query, $sessionId, $languageCode = 'th')
    {
        try {
            $session = $this->sessionsClient->sessionName($this->projectId, $sessionId);

            $textInput = new TextInput();
            $textInput->setText($query);
            $textInput->setLanguageCode($languageCode);

            $queryInput = new QueryInput();
            $queryInput->setText($textInput);

            $response = $this->sessionsClient->detectIntent($session, $queryInput);
            $queryResult = $response->getQueryResult();

            return [
                'status' => 1,
                'response' => $queryResult->getFulfillmentText(),
                'intent' => $queryResult->getIntent()->getDisplayName(),
                // เพิ่มเติมข้อมูลอื่นๆ ตามต้องการ
            ];
        } catch (Exception $e) {
            return [
                'status' => 0,
                'response' => '',
                'error' => $e->getMessage()
            ];
        }
    }
}
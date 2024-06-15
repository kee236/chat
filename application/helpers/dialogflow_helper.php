<?php
require 'vendor/autoload.php';

use Google\Cloud\Dialogflow\V2\SessionsClient;
use Google\Cloud\Dialogflow\V2\QueryInput;
use Google\Cloud\Dialogflow\V2\TextInput;

putenv('GOOGLE_APPLICATION_CREDENTIALS=path/to/your-service-account-file.json');

function detectIntentTexts($projectId, $texts, $sessionId, $languageCode = 'en-US') {
    $sessionsClient = new SessionsClient();
    $session = $sessionsClient->sessionName($projectId, $sessionId);
    $responseText = '';

    foreach ($texts as $text) {
        $textInput = new TextInput();
        $textInput->setText($text);
        $textInput->setLanguageCode($languageCode);

        $queryInput = new QueryInput();
        $queryInput->setText($textInput);

        $response = $sessionsClient->detectIntent($session, $queryInput);
        $queryResult = $response->getQueryResult();
        $responseText = $queryResult->getFulfillmentText();
    }

    $sessionsClient->close();
    return $responseText;
}

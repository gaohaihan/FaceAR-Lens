// @input Asset.RemoteServiceModule remoteServiceModule
// @input Asset.InternetModule internetModule

// ======== CONFIG ========
// Change this flag when testing locally
var USE_LOCAL = true;

// Production base URL
var PROD_URL = "https://facear/";

// Local HTTPS URL from ngrok (replace with your tunnel URL)
var LOCAL_URL = "https://62d0605bc559.ngrok-free.app/";

// Pick the base URL based on the flag
var BASE_URL = USE_LOCAL ? LOCAL_URL : PROD_URL;

// ======== GENERIC REQUEST FUNCTION ========
function makeAPIRequest(endpoint, method, body, callback) {
    const req = RemoteServiceHttpRequest.create();
    req.url = BASE_URL + endpoint;
    req.method = RemoteServiceHttpRequest.HttpRequestMethod[method];

    // Set headers and body if sending data
    if (body) {
        req.headers = { "Content-Type": "application/json" };
        req.body = JSON.stringify(body);
    } else {
        req.headers = {};
        req.body = "";
    }

    script.internetModule.performHttpRequest(req, function(res) {
        var parsedData = null;
        try {
            parsedData = JSON.parse(res.body);
        } catch (e) {
            print("Error parsing JSON from " + endpoint + ": " + e);
        }

        if (callback) {
            callback(res, parsedData);
        }
    });
}

// ======== ENDPOINT-SPECIFIC FUNCTIONS ========
function getDifficulty(callback) {
    makeAPIRequest("difficulty", "Get", null, callback);
}

function getStartButton(score, callback) {
    makeAPIRequest("start_button_pressed", "Put", null, callback);
}

// ======== EXPOSE TO OTHER SCRIPTS ========
script.api.makeAPIRequest = makeAPIRequest;
script.api.getDifficulty = getDifficulty;
script.api.getStartButton = getStartButton;

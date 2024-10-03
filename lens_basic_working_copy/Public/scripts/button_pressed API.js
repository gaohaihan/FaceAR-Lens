// @input Asset.RemoteServiceModule remoteServiceModule
// @input Component.Text responseData

// Import module
const Module = require("./button_pressed API Module");
const ApiModule = new Module.ApiModule(script.remoteServiceModule);

// Access functions defined in ApiModule like this:
//ApiModule.(function name)
function handleResponse(hasError, json) {
    print(`received from app, has error: ${hasError}`)
    print(`json: ${json}`);
    global.Sensitivity = parseFloat(json);
    script.responseData.text = json;
}

script.api.makeRequest = function() {
  ApiModule.button_pressed(handleResponse);  
};


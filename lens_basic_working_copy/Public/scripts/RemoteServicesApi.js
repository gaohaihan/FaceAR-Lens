// @input Asset.RemoteServiceModule remoteServiceModule
// @input Component.Text responseData
// @input Component.ScriptComponent gameManager
// @input Component.ScriptComponent settingUI

// Import module
const Module = require("./RemoteServicesApiModule");
const ApiModule = new Module.ApiModule(script.remoteServiceModule);

// Access functions defined in ApiModule like this:
//ApiModule.(function name)
function handleResponse(hasError, json) {
    // print(`received from app, has error: ${hasError}`)
    // print(`json: ${json}`);
    try{
        const parsedData = json;
        switch (parsedData.elementName) {
            case "sensitivity" :
                global.Difficulty = parseFloat(parsedData.value);
                script.responseData.text = parsedData.value;
                break;
            case "startButton" :
                script.gameManager.api.Start();
                script.responseData.text = "started";
                break;
            case "leftSwitch" :
                if (parsedData.pressed){
                    script.settingUI.api.ToggleOn_Left();
                }
                else{
                    script.settingUI.api.ToggleOff_Left();
                }
                script.responseData.text = "left";
                break;
            case "rightSwitch" :
                if (parsedData.pressed){
                    script.settingUI.api.ToggleOn_Right();
                }
                else{
                    script.settingUI.api.ToggleOff_Right();
                }
                script.responseData.text = "right";
                break;
            case "prevButton" :
                script.gameManager.api.Previous();
                script.responseData.text = "prev";
                break
            case "nextButton" :
                script.gameManager.api.Next();
                script.responseData.text = "next";
                break;
            default:
                script.responseData.text = "Invalid request";
                break;
        }
    } catch (hasError){
        script.responseData.text = "Error: " + hasError;
    }
}

script.api.makeRequest = function() {
  ApiModule.difficulty(handleResponse);
};

// @input Asset.RemoteServiceModule remoteServiceModule

// Import module
const Module = require("./FaceAR API Module");
const ApiModule = new Module.ApiModule(script.remoteServiceModule);

// Access functions defined in ApiModule like this:
//ApiModule.(function name)

function callback(error, result) {
    if (error) {
        // Handle error
         print(JSON.stringify(result));
    } else {
        // Handle successful result
        global.Sensitivity = Math.max(parseFloat(JSON.stringify(result)), 0.9);
        print(global.Sensitivity);
        ApiModule.sensitivity(global.Sensitivity, callback);
    }
}

ApiModule.sensitivity(global.Sensitivity, callback);
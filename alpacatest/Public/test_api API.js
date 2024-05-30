// @input Asset.RemoteServiceModule remoteServiceModule
// @input Component.Text3D text
// Import module
const Module = require("./test_api API Module");
const ApiModule = new Module.ApiModule(script.remoteServiceModule);

// Access functions defined in ApiModule like this:
//ApiModule.(function name)


function callback(error, result) {
    if (error) {
        // Handle error
        script.text.text = JSON.stringify(result);
    } else {
        // Handle successful result
         script.text.text = JSON.stringify(result);
    }
}

ApiModule.facearendpoint1();
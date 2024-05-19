// @input Asset.RemoteServiceModule remoteServiceModule

// Import module
const Module = require("./Alpaca API Module");
const ApiModule = new Module.ApiModule(script.remoteServiceModule);

// Access functions defined in ApiModule like this:
//ApiModule.(function name)

function callback(error, result) {
    if (error) {
        // Handle error
        print(JSON.stringify(result));
    } else {
        // Handle successful result
        print(JSON.stringify(result));
    }
}

ApiModule.get_latest_trades("SNAP", callback);
// -----JS CODE-----
const pubSub = require("./PubSubModule");

script.api.ToggleOn_Left = function(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, true);
}

script.api.ToggleOff_Left = function(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, false);
}

script.api.ToggleOn_Right = function(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, true);
}

script.api.ToggleOff_Right = function(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, false);
}

// -----JS CODE-----
// @input SceneObject sensitivityUI
// @input SceneObject bilateralUI

const pubSub = require("./PubSubModule");

/***
 * Toggle setting controls visibility
 */
script.api.SettingsToggle = function(){
        script.sensitivityUI.enabled = !script.sensitivityUI.enabled;
script.bilateralUI.enabled = !script.bilateralUI.enabled;
}


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

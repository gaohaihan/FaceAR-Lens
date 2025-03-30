// -----JS CODE-----
// @input SceneObject sensitivityUI
// @input SceneObject bilateralUI
// @input Component.ScriptComponent bilateralToggle_left
// @input Component.ScriptComponent bilateralToggle_right

const pubSub = require("./PubSubModule");

/***
 * Toggle setting controls visibility
 */
script.api.SettingsToggle = function(){
        script.sensitivityUI.enabled = !script.sensitivityUI.enabled;
}

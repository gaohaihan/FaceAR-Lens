// -----JS CODE-----
// Set sensitivity to value of slider when slider value is changed.
// @input SceneObject button
// @input SceneObject self

script.api.ToggleButtons = function(){
    script.button.enabled = !script.button.enabled;
    print("show")
}
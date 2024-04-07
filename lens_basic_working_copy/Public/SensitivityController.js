// -----JS CODE-----
// @input SceneObject sensitivitySlider
// @input Component.ScriptComponent sliderScript

global.Sensitivity = 0.5;

script.api.SensitivitySlider = function(){
    //print(global.Sensitivity);
    SetSensitivity();
 }

 // Toggle slider visibility
 script.api.sliderToggle = function(){
    // print("slider toggle");
      script.sensitivitySlider.enabled = !script.sensitivitySlider.enabled;
  }

 // Set value of global sensitivity to value of slider when changed.
  function SetSensitivity(){
    var sliderValue = script.sliderScript.api.getSliderValue();
    global.Sensitivity = sliderValue;
 }



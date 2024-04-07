// -----JS CODE-----
// @input SceneObject UiParentObject
// @input SceneObject slider
// @input Component.ScriptComponent controller
// @input Component.Text ExpressionTitle

// @input Component.ScriptComponent sliderScript
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expression
// @input float sensitivity = 0.5
script.UiParentObject.enabled = true;
script.ExpressionTitle.text = script.expression;
let weight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expression);
let color = script.target.getMaterial(0).getPass(0).baseColor;
updateVisual(script.target, weight);


// Set sensitivity to value of slider when slider value is changed.
script.api.GetExpressionName = function(){
    return script.expression;
}

// Set sensitivity to value of slider when slider value is changed.
script.api.onValueChange = function(){
   var sliderValue = script.sliderScript.api.getSliderValue();
    script.sensitivity = sliderValue;
   // print("slider value  " + sliderValue);
}

// Set sensitivity to value of slider when slider value is changed.
script.api.sliderToggle = function(){
  // print("slider toggle");
    script.slider.enabled = !script.slider.enabled;
}

// Update opacity of mask based on epxression weight
function updateVisual(visualComponent, weight) {
    alpha = GetWeight();
    color = visualComponent.getMaterial(0).getPass(0).baseColor;
    visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
}

// Adjust expression weight for sensitivity
function GetWeight(){
    var adjusted_weight;
    var weight = script.faceMesh.mesh.control.getExpressionWeightByName(script.expression);
    //print("weight " + weight);

    // TODO: I think this is correct but may need some adjustments
    // particularlly to the alpha value.
    var max_weight = 1 - script.sensitivity;
    var adjusted_weight = weight / max_weight;
    //print("weight " + adjusted_weight)

    return adjusted_weight;

}
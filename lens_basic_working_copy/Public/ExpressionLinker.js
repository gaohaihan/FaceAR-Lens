// -----JS CODE-----
// @input Component.ScriptComponent controller
// @input Component.Text displayExpression
// @input Component.Text displayRepCount

// @input Component.ScriptComponent sliderScript
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh

// @input string expression
// @input string displayText
// @input number completedReps
// @input number requiredReps
// @input bool midRep

let color = script.target.getMaterial(0).getPass(0).baseColor;
let sensitivity = global.Sensitivity;

UpdateVisual(script.target);
CountReps();

script.api.ReStart = function(){
    RestartSet()
    SetVisualText(script.displayExpression, script.displayText);
    SetVisualText(script.displayRepCount, script.completedReps);
 }

function SetVisualText(textComponent, text){
    textComponent.text = text;
}

// Count completed reps, expression must return to base line bf another rep is counted.
function CountReps() {
     weight = GetWeight();
     if (weight >= sensitivity && script.midRep !== true){
       // print("rep start")
        script.midRep = true;
        script.completedReps += 1
        SetVisualText(script.displayRepCount, script.completedReps.toString());
     }

     if (weight <= 0.2 && script.midRep === true){
       // print("rep completed")
        script.midRep = false;
     }
 }

// Update opacity of mask based on expression weight
function UpdateVisual(visualComponent) {
   // print("slider value  " +   sensitivity);
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
    var max_weight = 1 - sensitivity;
    var adjusted_weight = weight / max_weight;
    //print("weight " + adjusted_weight)

    return adjusted_weight;
}

// Update opacity of mask based on expression weight
function RestartSet(visualComponent) {
    script.completedReps = 0;
 }
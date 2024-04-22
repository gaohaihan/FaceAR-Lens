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
// @input number minExpressionValue
// @input bool midRep

const pubSub = require("./PubSubModule");
let minExpressionValue = global.ExpressionMinValues[script.expression];
let color = script.target.getMaterial(0).getPass(0).baseColor;
let sensitivity = global.Sensitivity;
UpdateVisual(script.target);
CountReps();
//print(minExpressionValue);

// Update opacity of mask based on expression weight
function UpdateVisual(visualComponent) {
    // Display prompt
    SetVisualText(script.displayExpression, script.displayText);
     alpha = GetWeight();
     color = visualComponent.getMaterial(0).getPass(0).baseColor;
     visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
 }

// Count completed reps, expression must return to base line bf another rep is counted.
// TODO: Still trying to figure out how to count reps when a persons base line values may differ significantly
function CountReps() {
    SetVisualText(script.displayRepCount, script.completedReps.toString());
     var adjusted_weight = GetWeight();
     if (adjusted_weight > 0.5 && script.midRep !== true){
        script.midRep = true;
        script.completedReps += 1
        SetVisualText(script.displayRepCount, script.completedReps.toString());
     }

     if (adjusted_weight<= 0.5 && script.midRep === true){
        script.midRep = false;
     }
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
    print("weight " + adjusted_weight);
    return adjusted_weight;
}

// Always set reps back to 0 when leave a exercise
pubSub.subscribe(pubSub.EVENTS.PreviousButtonClicked, () => {
    script.completedReps = 0;
});

function SetVisualText(textComponent, text){
    textComponent.text = text;
}

function WithInRange(input1, input2, deviation)
{
 var deviation = 0.005;
 return Math.abs(input1 - input2) <= deviation;
}
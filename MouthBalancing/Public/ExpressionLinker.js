// -----JS CODE-----
// @input Component.RenderMeshVisual faceMesh
// @input Component.ScriptComponent tweenTransform


var weight = script.faceMesh.mesh.control.getExpressionWeightByName(Expressions.MouthSmileRight);

var tween = script.tweenTransform;
tween.end.z = -40;
tween.api.startTween();
tween.shouldReset = false;

// Wait for 2 seconds before executing a function
var delayedEvent = script.createEvent("DelayedCallbackEvent");
delayedEvent.bind(function(eventData)
{
print("delay is over");
var currRotation = tween.getTransform().getWorldRotation();
tween.start = currRotation;
tween.end.z = 40;
tween.api.startTween();

});

// Start with a 2 second delay
delayedEvent.reset(1);
print("delay has started");


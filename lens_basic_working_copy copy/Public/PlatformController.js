// -----JS CODE-----
// @input Component.FaceMaskVisual target
// @input Component.RenderMeshVisual faceMesh
// @input string expression1
// @input string expression2
// @input float sensitivity = 0.5
// @input Component.ScriptComponent sliderScript
// @input SceneObject slider 
// @input SceneObject platform
// @input float moveSpeed
// @input float minRot
// @input float maxRot
// @input SceneObject ball
// @input SceneObject altBall

var moveSpeed = script.moveSpeed;
var minRot = script.minRot;
var maxRot = script.maxRot;
var platform = script.platform;
// The threshold to destroy ball and spawn a new one when it rolls off a platform
var posThreshold = 6.4;
var weight1 = script.faceMesh.mesh.control.getExpressionWeightByName(script.expression1);
var weight2 = script.faceMesh.mesh.control.getExpressionWeightByName(script.expression2);
var altBall = script.altBall;
altBall.enabled = false;
var currBall = script.ball;

function SetPlatformRotation(rotDeg) {
    var rotation = platform.getTransform().getWorldRotation();
    if(rotDeg < minRot) rotDeg = minRot;
    if(rotDeg > maxRot) rotDeg = maxRot;
    var targetEulerRot = convertEulerToRad(new vec3(0, 0, rotDeg));
    var targetQuatRotation = quat.fromEulerVec(targetEulerRot);
    var currentRotation = platform.getTransform().getWorldRotation();
    // Smooth the rotation using deltaTime
    var smoothedRotation = quat.lerp(currentRotation, 
                                      targetQuatRotation, 
                                      moveSpeed * getDeltaTime());
    // Apply the smoothed rotation to the object
    platform.getTransform().setWorldRotation(smoothedRotation);
}

function convertEulerToRad(deg) {
    return new vec3(deg.x * Math.PI / 180.0,
    deg.y * Math.PI / 180.0,
    deg.z * Math.PI / 180.0
    );
}

pubSub.subscribe(pubSub.EVENTS.SetPlatformRotation, (data) => {
  SetPlatformRotation(data);
});
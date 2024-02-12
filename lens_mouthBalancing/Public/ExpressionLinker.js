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
updateVisual(script.target, weight2)

// Set sensitvity to value of slider when slider value is changed. 
script.api.onValueChange = function(){
   var sliderValue = script.sliderScript.api.getSliderValue();
    script.sensitivity = sliderValue;
}

// Set sensitvity to value of slider when slider value is changed. 
script.api.sliderToggle = function(){
   print("slider toggle")
    script.slider.enabled = !script.slider.enabled;
}

// Update rotation of seesaw based on epxression weight
function updateVisual(visualComponent) {
    /*
    if(Math.abs(currBall.getTransform().getWorldPosition().y) > posThreshold) {
                print("here1");
        var tempBall = currBall;
        currBall = altBall;
        currBall.enabled = true;
        currBall.getTransform().position = new vec3(0.0108, 1.4874, 0);
        altBall = tempBall;
        altBall.enabled = false;
    }
    */
    // Get adjusted weights based on sensitivity
    adjWeight1 = GetWeight(script.expression1);
    adjWeight2 = GetWeight(script.expression2);
    //alpha = adjWeight1;
    if(Math.abs(adjWeight1 - adjWeight2) <= script.sensitivity) {
        if((adjWeight1 >= 0.3 && adjWeight2 >= 0.3) || adjWeight1 <= 0.2 && adjWeight2 <= 0.2) {
            print("balanced");
            SetPlatformRotation(0);
        }
        else {
            print("imbalanced");
            var rotDeg = (adjWeight1 - adjWeight2) * 100;
            SetPlatformRotation(rotDeg);
        }
    }
    /*
    color = visualComponent.getMaterial(0).getPass(0).baseColor;
    visualComponent.getMaterial(0).getPass(0).baseColor = new vec4(color.r, color.g, color.b, alpha);
    */
}

// Adjust expression weight for sensitivity
function GetWeight(expr){
    var adjusted_weight;
    var weight = script.faceMesh.mesh.control.getExpressionWeightByName(expr)
    
    // TODO: may need some adjustments particularly to the alpha value.
    var max_weight = 1 - script.sensitivity
    var adjusted_weight = weight / max_weight
    return adjusted_weight 
}

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

function quaternionToEulerAngles(rotation) {
    var m00 = 1 - 2 * (rotation.y * rotation.y + rotation.z * rotation.z);
    var m01 = 2 * (rotation.x * rotation.y - rotation.z * rotation.w);
    var m02 = 2 * (rotation.x * rotation.z + rotation.y * rotation.w);
    var m10 = 2 * (rotation.x * rotation.y + rotation.z * rotation.w);
    var m11 = 1 - 2 * (rotation.x * rotation.x + rotation.z * rotation.z);
    var m12 = 2 * (rotation.y * rotation.z - rotation.x * rotation.w);
    var m20 = 2 * (rotation.x * rotation.z - rotation.y * rotation.w);
    var m21 = 2 * (rotation.y * rotation.z + rotation.x * rotation.w);
    var m22 = 1 - 2 * (rotation.x * rotation.x + rotation.y * rotation.y);

    var pitch = Math.asin(-m12);
    var yaw = Math.atan2(m02, m22);
    var roll = Math.atan2(m10, m11);

    pitch *= 180 / Math.PI;
    yaw *= 180 / Math.PI;
    roll *= 180 / Math.PI;

    return new vec3(pitch, yaw, roll);
}
// @input float moveSpeed;

var moveSpeed = script.moveSpeed;

// -----JS CODE-----
function onUpdateEvent(eventData) {
    // Calculate the target rotation
    // Euler angles in degrees
    var targetEulerRot = new vec3(0, 0, 40 * Math.PI / 180.0); 
    var targetQuatRotation = quat.fromEulerVec(targetEulerRot);
    // Get the current rotation
    var currentRotation = script.getTransform().getWorldRotation();
    // Smooth the rotation using deltaTime
    var smoothedRotation = quat.lerp(currentRotation, 
                                      targetQuatRotation, 
                                      moveSpeed * getDeltaTime());
    // Apply the smoothed rotation to the object
    script.getTransform().setWorldRotation(smoothedRotation);
}

var event = script.createEvent("UpdateEvent")
event.bind(onUpdateEvent)
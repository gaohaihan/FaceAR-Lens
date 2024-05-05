let subscribers = {};

const EVENTS = {
    StartButtonClicked: 'StartButtonClicked',
    PreviousButtonClicked: 'PreviousButtonClicked',
    NextButtonClicked: 'NextButtonClicked',
    SetExpressionPromptText: 'SetExpressionPromptText',
    SetExpressionRepText: 'SetExpressionRepText',
    ToggleBilateralDetection_Left: 'ToggleBilateralDetection_Left',
    ToggleBilateralDetection_Right: 'ToggleBilateralDetection_Right',
    SetBilateralDetection_Left: 'SetBilateralDetection_Left',
    SetBilateralDetection_Right: ' SetBilateralDetection_Right',
    SetBilateralDetection: 'SetBilateralDetection',
};

const EXPRESSIONS = {
    JawOpen: 'JawOpen',
    BrowsUpCenter: 'BrowsUpCenter',
};

module.exports = {
    /**
     * Please me sure to have your types right,
     * the subscribe callback method may not be able to convert them to correct type.
     */
    publish(event, data) {
        // check for subscriber of event
        if (!subscribers[event]) return;
        // invoke call back methods for all subscribers to event
        subscribers[event].forEach(subscriberCallback =>
            subscriberCallback(data));
    },
    subscribe(event, callback) {
        if (!subscribers[event]) {
            // register event
            subscribers[event] = [];
        }
        // put call back function in event array
        subscribers[event].push(callback);
    },
    EVENTS,
    EXPRESSIONS
};

// USAGE
/*

// Subscribe to an event
pubsub.subscribe(EVENTS.EVENT_ONE, data => {
  console.log(`Received data for EVENT_ONE: ${data}`);
});

// Publish an event
pubsub.publish(EVENTS.EVENT_ONE, 'Hello from EVENT_ONE!');

*/
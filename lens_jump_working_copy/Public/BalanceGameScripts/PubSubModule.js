let subscribers = {};

const EVENTS = {
    SetExpressionPromptText: 'SetExpressionPromptText',
    SetExpressionRepText: 'SetExpressionRepText',
    SetExpressionRequiredRepText: 'SetExpressionRequiredRepText',
    ExpressionIndexEnabled: 'ExpressionIndexEnabled',
    SetJumpAmount: "SetJumpAmount"
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
let subscribers = {};

const EVENTS = {
    StartButtonClicked: 'StartButtonClicked',
    PreviousButtonClicked: 'PreviousButtonClicked',
    NextButtonClicked: 'NextButtonClicked',
};

const EXPRESSIONS = {
    JawOpen: 'JawOpen',
    BrowsUpCenter: 'BrowsUpCenter',
};

module.exports = {
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
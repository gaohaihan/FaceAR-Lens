// -----JS CODE-----
// @input Component.Text displayExpression
// @input Component.Text displayRepCount

const pubSub = require("./PubSubModule");

function SetPromptText(text){
    script.displayExpression.text = text;
}

pubSub.subscribe(pubSub.EVENTS.SetExpressionPromptText,
    data => {
        SetPromptText(data);
      }
 );


 function SetRepText(text){
    script.displayRepCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionRepText,
    data => {
        SetRepText(data);
      }
 );

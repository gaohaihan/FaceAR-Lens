// @input Component.RenderMeshVisual faceMesh
// @input bool isBilateralSequence
//@input string[] expressionNames
const pubSub = require("./PubSubModule");

function InitializeBaseExpressionsForSequence(){
    print("⚠️ INITIALIZING BASE EXPRESSIONS - Stack trace:");
    print(new Error().stack); 
    pubSub.publish(pubSub.EVENTS.Pause);
    pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, "Initializing, please not move for 3s");

    if (script.isBilateralSequence){
        return;
    }

    CreateExpressionList_uni();

    pubSub.publish(pubSub.EVENTS.UnPause);

    pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, "finished initalization");

}

function CreateExpressionList_uni(){
    for(let i = 0; i < script.expressionNames.length; i++){
        if(script.expressionNames[i].includes("left")){
            var isBiLateral = true;
        } else {
            var isBiLateral = false;
        }
        var expressionName = script.expressionNames[i];
        var baseValue =  script.faceMesh.mesh.control.getExpressionWeightByName(expressionName);
        global.SequenceExpression.push(new expression(expressionName, isBiLateral, baseValue));
        print("Base value for " + SequenceExpression[i].name + " is " + baseValue + ", is bilateral: " + SequenceExpression[i].isBiLateral + " expression is added");
    }
}


class expression{
    constructor(name, isBiLateral, baseValue){
        this.name = name;
        this.isBiLateral = isBiLateral;
        this.baseValue = baseValue;
    }
}

 global.SequenceExpression =[];


 /**
  * Pause exercise and reinit base expression value.
  */
 pubSub.subscribe(pubSub.EVENTS.InitializeBaseExpressions, () => {
   InitializeBaseExpressionsForSequence();
 });



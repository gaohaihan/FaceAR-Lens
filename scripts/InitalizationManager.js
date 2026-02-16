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
        var expressionName = script.expressionNames[i];
        var baseValue =  script.faceMesh.mesh.control.getExpressionWeightByName(expressionName);
        global.SequenceExpression.push(new expression(expressionName, false, baseValue));
        print("Base value for " + SequenceExpression[i].name + " is " + baseValue + " expression is added");
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



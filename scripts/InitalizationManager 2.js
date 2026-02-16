// @input Component.RenderMeshVisual faceMesh
// @input bool isBilateralSequence
const pubSub = require("./PubSubModule");

function InitializeBaseExpressionsForSequence(){
    print("initalizing base expressions");
     print("⚠️ INITIALIZING BASE EXPRESSIONS - Stack trace:");
    print(new Error().stack); 
    pubSub.publish(pubSub.EVENTS.Pause);
    pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, "Initializing, please not move for 3s");

    if (script.isBilateralSequence){
        return;
    }

    // get base expression value for all expressions in the sequence
    for(let i = 0; i < global.SequenceExpression.length; i++){
        var baseValue =  script.faceMesh.mesh.control.getExpressionWeightByName(SequenceExpression[i].name);
        SequenceExpression[i].baseValue = baseValue;
        print("Base value for " + SequenceExpression[i].name + " is " + baseValue);
    }
    pubSub.publish(pubSub.EVENTS.UnPause);

    pubSub.publish(pubSub.EVENTS.SetExpressionPromptText, "finished initalization");

}


class expression{
    constructor(name, isBiLateral, baseValue){
        this.name = name;
        this.isBiLateral = isBiLateral;
        this.baseValue = baseValue;
    }
}

 global.SequenceExpression =[
    new expression("LipsPucker", true, 0),
    new expression("MouthLeft", true, 0),
    new expression("MouthRight", false, 0),
    new expression("JawOpen", false, 0),
    new expression("Puff", false, 0)
 ]


 /**
  * Pause exercise and reinit base expression value.
  */
 pubSub.subscribe(pubSub.EVENTS.InitializeBaseExpressions, () => {
   InitializeBaseExpressionsForSequence();
 });


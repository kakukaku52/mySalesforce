({
    handlerCreateExpense: function(component,event,helper){
        var newExpense = event.getParam("expense");
        helper.createExpense(component,newExpense);
    },
    handlerUpdateExpense: function(component,event,helper){
        var updateExp = event.getParam("expense");
        helper.updateExpense(component,updateExp);
    },
    doInit:function(component,event,helper){
        var action = component.get("c.getExpenses");
        action.setCallback(this,function(response){
            var state = response.getState();
            response.getState();
            if (state === "SUCCESS"){
                component.set("v.expenses",response.getReturnValue());
            }
            else{
                console.log("Failed with state" + state);
            }
        });
        $A.enqueueAction(action);
    }
})
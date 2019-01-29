({
	createExpense : function(component, expense) {
        this.saveExpense(component,expense,function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var expenese = component.get("v.expenses");
                expenese.push(response.getReturnValue());
                component.set("v.expenses",expenese);
            }
        });
	},
    updateExpense:function(component,expense){
        this.saveExpense(component,expense);
    },
    saveExpense: function(component,expense,callback){
        var action = component.get("c.saveExpense");
        action.setParams({
            "expense": expense
        });
        if(callback){
            action.setCallback(this,callback);
        }
        $A.enqueueAction(action);
    }
})
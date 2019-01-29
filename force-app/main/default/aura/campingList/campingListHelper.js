({
	createItem : function(component,newItem) {
		var action = component.get("c.saveItem");
        action.setParams({
            "svitem" : newItem
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state === "SUCCESS"){
                var newitem = component.get("v.items");
                newitem.push(response.setReturnValue);
                component.set("v.items",newitem);
            }
        });
        $A.enqueueAction(action);
	}
})
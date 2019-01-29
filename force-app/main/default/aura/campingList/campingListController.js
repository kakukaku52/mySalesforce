({
    clickCreateItem : function(component, event, helper) {
        var isValid = component.find('CHALLENGE').reduce(function (validSoFar, inputCmp){
            
            return validSoFar && inputCmp.get('v.validity').valid;                                      
            
        },true);
        if(isValid){
            var items = component.get("v.items");
            var newItem =  component.get("v.newItem");
            //var result = JSON.parse(JSON.stringify(newItem));
            //items.push(newItem);
            //component.set("v.items",result);
            //component.set("v.newItem",{'sobjectType' : 'Camping_Item__c',
            //                           'Quantity__c' : 0,
            //                                       'Price__c' : 0,
            //                                       'Packed__c' : false});
            helper.createItem(component,newItem);
        }
    },
    doInit:function(component,event,helper){
        var action = component.get("c.getItems");
        action.setCallback(this,function(response){
            var state = response.getState();
            if (state === "SUCCESS"){
                component.set("v.items",response.getReturnValue());
            }
            else{
                console.log("Failed with state" + state);
            }
        });
        $A.enqueueAction(action);
    }
})
//USEUNIT OrderClasses
//USEUNIT WrapperClasses

//-------------------------------------
//Starting app
function StatApp() {
	
	//pre-action
	var oOrders = new cOrders();
	if (oOrders.isRrunning(false)) {
    return true;
    }
	
	//action
	TestedApps.Orders.Run();
	
	//post-action
	return oOrders.isRrunning(true); 


//-------------------------------------
//Creating order
function CreateOrder() {

	//pre-action
	if (!oOrders.isRrunning) {
		return false;
	} else {
		StartApp();
	};
	
	//Creating order
	var oGrid = new cGrid(linkToGridObject);
	var rowCountBefore = oGrid.getRowCount();
	var iRow = oGrid.getRowIndexByText();
  if (iRow >= 0) {
    return true;
  } else (iRow < 0) {
    return false;
  };
  oOrders.ClickMainMenuItem("Orders|New order...")
  oOrders.FillForm([array]);
  var rowCountAfter = oGrid.getRowCount();
	
	//Check order created
	oOrders.CheckOrderCreated(rowCountBefore, rowCountAfter);
};

/*
TODO
//-------------------------------------
//Editing Order
function EditOrder() {
	//pre-action
	if (!oOrders.isRrunning) {
		return false;
	} else {
		StartApp();
	};
  
  if(!oCreatedOrder.exists) {
    return false;
  } else CreateOrder();
	
	//action
	open, edit and change order
	
	//post-action
	check order with index changed
}


//-------------------------------------
//Deleting Order
function DeleteOrder() {
	//pre-action
	if (!oOrders.isRrunning) {
		return false;
	} else {
		StartApp();
	};
  
  if(!oCreatedOrder.exists) {
    return false;
  } else CreateOrder();
	
	//action
	delete order
	
	//post-action
	check order deleted
}

*/

//-------------------------------------
//Closing app
function CloseApp() {
	//pre-action
	var oOrders = new cOrders();
	if (oOrders.isRrunning(false)) {
    return true;
  };
	
	//action
	TestedApps.Orders.Close();
	
	//post-action
	oOrders.isClosed(); 
};
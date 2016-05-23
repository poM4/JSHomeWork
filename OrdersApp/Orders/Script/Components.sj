//USEUNIT OrderClasses

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
	
	//action
	var oGrid = new cGrid(link to grid object)
	var rowCountBefore = oGrid.getRowCount();
	var iRow = oGrid.getRowIndexByText() 0 true : false
	
	
	create order
	
	//post-action
	check if order created
	
}

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
	check order with index exists
	
	//action
	delete order
	
	//post-action
	check order deleted
}

*/

//-------------------------------------
//Starting app
function CloseApp() {
	//pre-action
	var oOrders = new cOrders();
	if (oOrders.isRrunning(false)) {
    return true;
  };
	
	//action
	TestedApps.Orders.Close();
	
	//post-action
	return oOrders.isClosed(); 
};


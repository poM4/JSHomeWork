//USEUNIT OrderClasses
//USEUNIT WrapperClasses

//-------------------------------------
//function Starting app
function StatApp() {
	
	//pre-action
	var oOrders = new cOrders();
	if (oOrders.isRrunning) return true;
	
	//action
	TestedApps.Orders.Run();
	
	//post-action
	if (oOrders.isRrunning)  {
		log success
		return true;
	}
	else log error
	return false;
}

//---------
//function Creating order
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


function EditOrder() {
	//pre-action
	check order with index exists
	
	//action
	open, edit and change order
	
	//post-action
	check order with index changed
}
function DeleteOrder() {
	//pre-action
	check order with index exists
	
	//action
	delete order
	
	//post-action
	check order deleted
}
function CloseApp() {
	//pre-action
	check Orders app runnig
	
	//action
	close Orders app
	
	//post-action
	check Orders app is not in proccess (closed)
}
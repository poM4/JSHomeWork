//USEUNIT OrderClasses
//USEUNIT WrapperClasses

function StatApp() {
	
	//pre-action
	var oOrders = new cOrders();
	if (oOrders.isRrunning) return true;
	
	//action
	start app
	
	//post-action
	if (oOrders.isRrunning)  {
		log success
		return true;
	}
	else log error
	return false;
}

function CreateOrder(data, expResult) {
	//pre-action
	if (!app is running) {
		log error ("app is not running");
		return false;
	}
	
	
	var oGrid = new cGrid(link to grid object)
	var rowCountBefore = oGrid.getRowCount();
	var iRow = oGrid.getRowIndexByText() 0 true : false
	
	//action
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
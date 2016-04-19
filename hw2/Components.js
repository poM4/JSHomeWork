//USEUNIT 

function StatApp() {
	
	//pre-action
	var oOrders = new cOrders();
	if (oOrders.isRrunning) return true;
	
	//action
	start app
	
	//post-action
	if (app is running)  {
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
	var rowCountBefore = get row count;
	var bExist = row with data exists ? true : false
	
}

function EditOrder() {
	
}
function DeleteOrder() {
	
}
function CloseApp() {
	
}
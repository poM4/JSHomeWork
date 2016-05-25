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
  oOrders.FillForm(/*array of controls*/);
  
  
  /*
  
  Controls for Order Form
  var oProductNames = Sys.FindChild("WPFControlName", "ProductNames", 4);
  Control for combobox choice WPFObject("ComboBoxItem", "MyMoney", 1)
  
  
  var oQuantity = Sys.FindChild("WPFControlName", "Quantity", 4);
  var oPrice = Sys.FindChild("WPFControlName", "Price", 4);
  var oDiscount = Sys.FindChild("WPFControlName", "Discount", 4);
  var oTotal = Sys.FindChild("WPFControlName", "Total", 4);
  var oDate = Sys.FindChild("WPFControlName", "Discount", 4);
  var oCustomerName = Sys.FindChild("WPFControlName", "Customer", 4);
  var oStreet = Sys.FindChild("WPFControlName", "Street", 4);
  var oCity = Sys.FindChild("WPFControlName", "City", 4);
  var oState = Sys.FindChild("WPFControlName", "State", 4);
  var oZip = Sys.FindChild("WPFControlName", "Zip", 4);
  var oCardType = Sys.FindChild("WPFControlName", "MasterCard", 4);
  var oCardNo = Sys.FindChild("WPFControlName", "CardNo", 4);
  var oExpDate = Sys.FindChild("WPFControlName", "ExpDate", 4);
  */
  
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
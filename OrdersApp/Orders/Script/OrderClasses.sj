//USEUNIT WrapperClasses

//--------------Order classes--------------
function cOrders() {

  //-------------------------------------
  //Checking app is running	
	this.isRunning = function(bLogError) {
		//pre-action
    var oProcess = Sys.FindChild(["ProcessName", "Index"], ["Orders", 1]);
    if (!oProcess.Exists) {
			if (bLogError) {
			  Log.Error("Process is not running");
			} else {
				Log.Message("Process is not running");
			}
			return false;
		}; 
		
    //action
    var oWindow = oProcess.FindChild("WPFControlName", "MainForm", 3);
    if (oWindow.Exists && oWindow.Visible) {
      Log.Message("Orders window visiable and enabled");
      } else {
      Log.Error("Orders window is not visible and enabled");
    };
		
		//post-action
		return true;
	}
  
  //-------------------------------------
  //Checking app was closed
  this.isClosed = function() {
  //pre-action
  var oProcess = Sys.FindChild(["ProcessName", "Index"], ["Orders", 1]);
  if (o.Process.Exists) {
    Log.Error("Process still exists");
  }
  return false;
  };
  
  //action
  var oWindow = oProcess.FindChild("WPFControlName", "MainForm", 3);
  if (!oWindow.Exists) {
    Log.Message("Orders window is closed");
  } else {
    Log.Error("Orders window was not closed");
  };
  return true;
  };
  
  //-------------------------------------
  //Checking app was closed  
  this.ClickMainMenuItem = function(path) {
    var oGrid = new cGrid();
  //TODO
  };
  
  
  

  //-------------------------------------
  //Creating order with data
  this.FillForm = function(productType, productQuantity) {
    var cForm = new oForm();
    var clientInfo = new Array();
        
    oForm.setComboBox(productType);
    oForm.setTextBoxValue(productQuantity);
    oForm.setTextBoxValue(pricePerUnit);
    oForm.setTextBoxValue(orderDiscount);
		oForm.setDateBoxValue(orderDate);
		oForm.setTextBoxValue(customerName);
		oForm.setTextBoxValue(customerStreet);
		oForm.setTextBoxValue(customerCity);
		oForm.setTextBoxValue(customerState);
		oForm.setTextBoxValue(customerZip);
		oForm.setRadioButtonValue(cardType);
    oForm.setTextBoxValue(customerCardNumber);
		oForm.setTextBoxValue(customerCardExpDate);
		cForm.setClickButton (okButton);
		};	
  };

  //-------------------------------------
  //Checking order was created
  this.CheckOrderCreated = function(oldRows, newRows) {
    
    //pre-condition
    this.oldRows = oldRows;
    this.newRows = newRows;
    
    //action
    if (this.oldRows + 1 == this.iNewRow) {
    Log.Message("Order was created");
    } else {
    Log.Error("Order was not created");
    };
  };
  
  
  
	
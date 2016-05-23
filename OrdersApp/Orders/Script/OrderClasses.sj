//USEUNIT WrapperClasses
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
//Checking app is closed
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
  }
  
  //post-action
  return true;
  
  
  





//Opening New Order Window
  
  
  
  /*
this.fillForm = function (array of data) {
		choose productType
		fill productQuantity
		fill pricePerUnit
		fill orderDiscount
		fill orderDate
		fill customerName
		fill customerStreet
		fill customerCity
		fill customerState
		fill customerZip
		choose cardType
		fill customerCardNo
		fill customerCardExpDate
		click okButton
		};	
}

*/		
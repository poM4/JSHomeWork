//USEUNIT WrapperClasses
function cOrders() {
	
	this.isRunning = function(bLogError) {
		//pre-action
		var oProcess = Sys.FindChild(["ProcessName", "Index"], ["Orders", 1])
    if (!oProcess.Exists) {
			if (bLogError) {
			Log.Error("Process is not running");
			}
			else {
				Log.Message ("Process is not running");
			}
			return false;
		} 
		
		
		//action
    var oWindow = oProcess.FindChild("WPFControlName", "MainForm", 3);
    if (oWindow.Exists && oWindow.Visible) {
      Log.Message("Orders window visiable and enabled");
    }
		
		//post-action
		
	}
  
  /*
function fillForm(array of data) {
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
		

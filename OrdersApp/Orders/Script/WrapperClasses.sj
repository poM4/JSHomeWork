

function cGrid (oGrid) {
	this.getRowCount = function() {
	};
	this.getColCount = function() {
	};
	this.getSearchRow = function() {
	};
	this.setSelectRow = function() {
	};
}

//-------------------------------------
//Filling TextBox
function cTextBox(oTextBox) {
	//pre-action
	function isValid() {
		if (typeof(oTextBox) == "object" && !oTextBox.Exists) {
			Log.Error("Control is not set or not exists")
			return false;
		}
	return true;
	}
	//action
	this.setValue = function (sValue) {
		if (!isValid()) return false;
		if (typeof(sValue) != "object" || sValue == undefined || sValue = null) {
			Log.Error ("Wrong data type, expected string", "Actual type: " + typeof(sValue));
			return false;
		};
  }; 	

    //setting text
    cTextBox.wText.Keys(sValue);

  this.getValue = function (sValue) {
  //????TODO
  };
	
	//post-action
  if (this.getValue() == sValue) {
  Log.Message ("Value has beem set with wText property");
  return true;
  } else 
  Log.Error("Value has not been set with wText property", "Expected: " + sValue + "Actual: " + this.getValue());
};

//-------------------------------------
//Filling DateBox
function cDateBox(oDateBox) {
	//pre-action
	function isValid() {
		if (typeof(oDateBox) == "object" && !oDateBox.Exists) {
			Log.Error("Control is not set or not exists")
			return false;
		}
	return true;
	}
	
  //action
	this.setValue = function (sValue) {
		if (!isValid()) return false;
		if (typeof(sValue) !="object" || sValue == undefined || sValue = null) {
			Log.Error("Wrong data type, expected string", "Actual type: " + typeof(sValue));
			return false;
		};
  }; 	
  
  //setting text
  cDateBox.wText.Keys(sValue);

	
	  //post-action
    if (this.getValue() == sValue) {
      Log.Message ("Value has beem set with wText property");
      return true;
    } else {
      Log.Error("Value has not been set with wText property", "Expected: " + sValue + "\nActual: " + this.getValue());
    
  
  //TODO
  this getValue = function() {
    var gValue = cTextBox.getValue();
  
  };



};



//-------------------------------------
//Choosing Radiobutton
function cRadioButton(oRadioButton) {

};

//-------------------------------------
//Clicking Submit(Ok) button
function cSubmitButton(oSubmitButton) {
  //pre-action
  
}
//-------------------------------------
//Clicking Cancel button
function cCancelButton(oCancelButton) {

};


//-------------------------------------
//Filling Order Form
function cForm(oForm) {
		//pre-action
	function isValid() {
		if (typeof(oForm) == "object" && !oForm.Exists) {
			Log.Error("Control is not set or not exists")
			return false;
		}
	return true;
	}
		//action

	  this.setComboBox = function(parameter) {
    
    };
    this.setTextBoxValue = function(sValue) {
      var cTextBox = new oTextBox();
      oTextBox.setValue(sValue);
    };
    
    
		this.setDateBoxValue = function(parameter){
    
    };
		this.setRadioButtonValue = function(parameter){
    
    };
    this.setClickButton = function(parameter){
    
    };
		//post-action
		//check if data was filled
};
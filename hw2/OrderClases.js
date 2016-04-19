//USEUNIT WrapperClasses
function cOrders() {
	
	this.isRunning = function(bLogError) {
		//pre-action
		if (!is orders process running) {
			if (bLogError) {
			log error ("Process is not running");
			}
			else {
				log message ("Process is not running");
			}
			return false;
		} 
			
		//action
		logorders window exists
		//post-action
		return true;
	}
}

//test test test
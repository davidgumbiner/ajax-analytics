function Tracker() {
	this.track = function(name, callback) {
		$.get("/event", { name: name },
		   function(data){
			return false;
		   });
	}
}
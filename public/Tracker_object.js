function Tracker() {
	this.track = function(name, callback) {
		$.getJSON("/event", { name: name },
		   function(data){
			return false;
		   });
	}
}
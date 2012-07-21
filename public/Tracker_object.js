function Tracker() {
	this.track = function(name, callback) {
		console.log("working")
		$.get("/event", { name: name },
		   function(data){
		    alert("Data Loaded: " + data); 
			return false;
		   });
	}
}
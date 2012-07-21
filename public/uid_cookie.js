$(document).ready(function(){
	generate_uid = function(){
		return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
	    	var r = Math.random()*16|0, v = c == 'x' ? r : (r&0x3|0x8);
	    	return v.toString(16);}
		)
	}
	uid = generate_uid()
	if( $.cookie('user_id') == null ) {
		$.cookie("user_id", uid)
	}
});
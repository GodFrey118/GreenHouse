function logout() {
	$.get("user/logout", function(data) {
		
	}, "json");
}
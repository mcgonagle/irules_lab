when HTTP_REQUEST {
	if { [HTTP::uri] starts_with "/welcome.html" } {
		log local0. "internally routing from [virtual name] to student1_v2v"
		virtual student1_v2v
	}
}

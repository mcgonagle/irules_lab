when HTTP_REQUEST {
#use the findstr command to search the URI for the string “me”
#if URI contains “me” 5 characters after “user=” then use pool 1, otherwise use pool2 
  if {[findstr [HTTP::uri] "user=" 5] equals "me"} {
       pool http_pool1
     }
     else {pool http_pool2}
  }	
}

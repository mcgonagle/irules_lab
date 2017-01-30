#Examine URI using "contains" string tool  
when HTTP_REQUEST {
#use the “contains” command to search the URI for the string “login”
#if URI contains “login” then use pool 1, otherwise use pool2 
    if {[HTTP::uri] contains "login"} {  
        pool http_pool1
    } else {
        pool http_pool2
    }
}

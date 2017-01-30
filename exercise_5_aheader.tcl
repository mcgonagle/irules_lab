when HTTP_REQUEST {
        foreach aHeader [HTTP::header names] {
              log local0. “$aHeader: [HTTP::header value $aHeader]”
        }
}
when HTTP_RESPONSE {
    HTTP::header insert X-Powered-By "F5 Networks"
    foreach aHeader [HTTP::header names] {
           log local0. "$aHeader: [HTTP::header value $aHeader]"
        }
}

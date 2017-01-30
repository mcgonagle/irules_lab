when HTTP_REQUEST {
        foreach aHeader [HTTP::header names] {
              log local0. “$aHeader: [HTTP::header value $aHeader]”
        }
}

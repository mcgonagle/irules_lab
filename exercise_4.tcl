#redirect all traffic to the same hostname (stripping the port if it exists), and the same URI over HTTPS
 when HTTP_REQUEST {
     if { [TCP::local_port] == 80 } {
#log the redirect action and show the URL being redirected
          log local0. "Redirecting to https://[getfield [HTTP::host] : 1][HTTP::uri]"
#use the “getfield” command to extract the hostname and strip any trailing port number
          HTTP::respond 301 Location "https://[getfield [HTTP::host] : 1][HTTP::uri]"
  }
}

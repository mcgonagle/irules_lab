when CLIENT_ACCEPTED {
  set port_is_odd [expr [TCP::remote_port] & 1]
  if { $port_is_odd } {
    log local0. "Port [TCP::remote_port] is odd"
    use pool http_pool1
  } else {
    log local0. "Port [TCP::remote_port] is even"
    use pool http_pool2
  }
}

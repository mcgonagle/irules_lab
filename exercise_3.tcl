when HTTP_REQUEST {
  if [ [ active_members down ] < 1 } {
      set stime 10
      HTTP::respond 501 content \
      "<html><head><title>Sorry Folks</title></head><body><meta-equiv='REFRESH' \
      content=$stime;url=http://[HTTP::host></HEAD> \
      <p><h2>Sorry, folks! We're closed to clean and repair America's favorite family fun site. \
      <p><p>Sorry, uh-huh, uh-huh, uh-huh!</h2></p></body></html>" "Content-Type" "text-html"
      }
}

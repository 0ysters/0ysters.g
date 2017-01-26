require "erubis"
template = Erubis::Eruby.new(DATA.read)
puts template.result(:files => Dir["**/*"])

__END__
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Index</title>
</head>
<body>
<ul>
  <% files.each do |file| %>
    <% unless File.directory? file %>
      <li><a href="<%= file %>"><%= file %></a></li>
    <% end %>
  <% end %>
</ul>
</body>
</html>

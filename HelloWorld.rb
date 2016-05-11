package "httpd" do
  action :install
  not_if "rpm -q httpd"
end

execute "systemctl restart httpd" do
  command "systemctl restart httpd"
end

file '/var/www/html/index.html' do

  content '<html>Hello World</html>'

  mode '0644'
end

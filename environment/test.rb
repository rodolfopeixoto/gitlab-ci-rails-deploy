net = Socket.ip_address_list.detect{|addr| addr.ipv4_private? }
ip = net.nil? ? 'localhost' : net.ip_address
config.domain = ip
config.action_mailer.default_url_options = { :host => config.domain }

Capybara.server_port = 8200
Capybara.server_host = ip
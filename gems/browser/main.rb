require "browser"

browser = Browser.new('Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1')

pp browser.device.mobile?
pp browser.platform.ios?
pp browser.safari?

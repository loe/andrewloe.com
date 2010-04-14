use Rack::Pony
use Rack::Static, :urls => [/\/.+/], :root => 'public'
run Proc.new {|env| [200, {'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400'}, ::File.open('public/index.html', 'r')]}
require 'rack/rewrite'

use Rack::Rewrite do
   r301 %r{/blog}, 'http://journal.andrewloe.com/'
   r301 %r{/gallery}, 'http://gallery.andrewloe.com/'
end
use Rack::Static, :urls => [/\/.+/], :root => 'public'
run Proc.new {|env| [200, {'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400'}, ::File.open('public/index.html', 'r')]}

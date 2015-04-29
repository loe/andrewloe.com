require 'newrelic_rpm'

use Rack::ConditionalGet
use Rack::ETag
use Rack::Static,
  :urls => ["/stylesheets", "/favicon.ico", "/robots.txt"],
  :root => "public"

NewRelic::Agent.manual_start

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

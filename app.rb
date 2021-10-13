require 'syro'
require 'json'

App = Syro.new do
  get do
    res.json(
      JSON.dump(
        greeting: 'hello',
        hostname: `hostname`.strip,
        now: Time.now.utc
      )
    )
  end
end

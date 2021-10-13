require 'syro'
require 'json'

App = Syro.new do
  get do
    res.json(
      JSON.dump(
        greeting: 'hello'
      )
    )
  end
end

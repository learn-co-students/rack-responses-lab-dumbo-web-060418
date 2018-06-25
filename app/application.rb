class Application

  def call(env)
    resp = Rack::Response.new

    time = Kernel.rand(1..24)

    if time < 12
      time = "Morning"
    else
      time = "Afternoon"
    end
    resp.write "Good #{time}!"

    resp.finish
  end

end


class Application

  def call(env)
    resp = Rack::Response.new
    the_time = Time.now
    if the_time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end

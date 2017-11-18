class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    resp.write "The time is #{time}\n"
    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    # resp.write "Hello, World"
    resp.finish
  end

end

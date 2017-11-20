class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    if current_time.hour > 12
      resp.write "Good Afternoon!"
    else #Time.now < Time.new(2017,11,19,12,00)
      resp.write "Good Morning!"
    end

    resp.finish
  end

end

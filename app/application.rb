class Application

	def call(env)
		resp = Rack::Response.new

		tf = Time.now

		t = tf.hour

		if t >= 12
			resp.write "Good Afternoon!"
		else
			resp.write "Good Morning!"
		end
		resp.finish
	end

end
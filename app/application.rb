class Application

    def call(env)
        resp = Rack::Response.new
  
        case Time.now.hour
            when 0..11
                resp.write "Good morning"
            when 12..23
                resp.write "Good afternoon"
        end

        resp.finish
    end
  
end
  
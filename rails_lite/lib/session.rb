require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    debugger
    cookie_val = req.cookies['_rails_lite_app']
    if cookie_val.nil? 
      debugger
      @cookie = {}
    else
      debugger
      @cookie = {'rails_lite_app' => cookie_val.to_json}
    end
  end

  def [](key)
    @cookie[key]
  end

  def []=(key, val)
    @cookie[key] = val
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
    debugger
    Rack::Response.set_cookie('_rails_lite_app', )
  end
end

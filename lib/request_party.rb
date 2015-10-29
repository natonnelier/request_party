require "request_party/version"

module RequestParty
  include HTTParty

  def initialize(base_uri)
    self.class.base_uri base_uri
  end

  def post(endpoint, options)
    self.class.post(endpoint, :body => options.to_json)
  end

  def put(endpoint, options)
    self.class.put(endpoint, :body => options.to_json)
  end

  def get(endpoint)
    self.class.get(endpoint)
  end

end

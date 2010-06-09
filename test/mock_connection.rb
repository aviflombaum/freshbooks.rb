require 'freshbooks/connection'

class MockConnection < Freshbooks::Connection
  def initialize(response_body)
    @response_body = response_body
  end
  
protected
  
  def post(request_body)
    @response_body
  end
end

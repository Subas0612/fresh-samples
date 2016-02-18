#Filter ticket by requester id and email

require "rubygems"
require "rest_client"
require "json"

fd_domain = "domain.freshdesk.com"

api_key_or_user_name = "sample@freshdesk.com"

password_or_x = "test"

#filter can be of type (new_my_open, watching, spam, deleted)

# sample with requester_id
# site=RestClient::Resource.new("https://company.domain.com/api/v2/tickets?requester_id=8888594&filter=new_and_my_open","#{api_key_or_user_name}","password")

site=RestClient::Resource.new("https://#{fd_domain}/ap/v2/tickets?email=test@test.com&filter=new_and_my_open","#{api_key_or_user_name}","#{password_or_x}")

begin
  response = site.get(:accept=>"application/json")
  puts "response_code: #{response.code} \nresponse_body: #{response.body} \n"
rescue => exception
  puts "response_code: #{exception.response.code} \nresponse_headers: #{exception.response.headers} \nresponse_body: #{exception.response.body} \n"
end
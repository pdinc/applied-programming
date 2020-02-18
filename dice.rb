require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  "<h1>Hello</h1>"
end

get "/tacos" do
    "Yes, please"
end
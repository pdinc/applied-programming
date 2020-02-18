require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    @dice_1 = rand(1..6)
    @dice_2 = rand(1..6)
    view "dice"
    #"<p>You rolled a #{dice_1} and a #{dice_2}</p>
    #<p>Your total dice roll is #{dice_1 + dice_2}</p>"
end
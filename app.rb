require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
  	@name = params[:name]
  	"#{@name.reverse}."
  end

  get "/square/:number" do
    @result = params[:number].to_i * params[:number].to_i
    "#{@result}"
  end

  get "/say/:number/:phrase" do
    solution = ""
      params[:number].to_i.times do
      solution += params[:phrase]
    end
    solution
  end


  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i
    if operation == "add"
       solution = number_1 + number_2
    elsif operation == "subtract"
      solution = number_1 - number_2
    elsif operation == "multiply"
      solution = number_1 * number_2
    else operation == "divide"
      solution = number_1 / number_2
    end
    solution.to_s
  end

end

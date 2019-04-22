require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    name = params[:name]
    reverse_name = name.reverse
    "#{reverse_name}"
  end

  get "/square/:number" do
    number = params[:number]
    square_number = number.to_i * number.to_i
    "#{square_number}"
  end

  get "/say/:number/:phrase" do
    phrase = params[:phrase]
    number = params[:number].to_i
    "#{phrase} " * number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      result = number1 + number2
    elsif operation == "subtract"
      result = number1 - number2
    elsif operation == "multiply"
      result = number1 * number2
    elsif operation == "divide"
      result = number1 / number2
    else
      result = "Unable to perform this operation"
    end
    result.to_s
  end

end

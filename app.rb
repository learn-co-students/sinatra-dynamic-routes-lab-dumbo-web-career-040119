require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    # since params are strings, you need to make it an integer (to_i) before squaring it
    (num ** 2).to_s
    #then make it back to a string(to_s)
  end

  get '/say/:number/:phrase' do
    str = ''
    (params[:number].to_i).times do
      str += "#{params[:phrase]}\n"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == "add"
      ans = num1 + num2
    elsif op == "subtract"
      ans = num1 - num2
    elsif op == "multiply"
      ans = num1 * num2
    elsif op == "divide"
      ans = num1 / num2
    else
      ans = "Unable to perform this opertaion"
    end
    ans.to_s
  end
end

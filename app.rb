require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    @user_name
  end

  get '/square/:number' do
    @num_square = params[:number].to_i ** 2
    @num_square.to_s
  end

  get '/say/:number/:phrase' do
    num_and_phrase = ''
    params[:number].to_i.times do
      num_and_phrase += params[:phrase]
    end
    num_and_phrase
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do

    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      (@number1 + @number2).to_s
    elsif @operation == "subtract"
      (@number1 - @number2).to_s
    elsif @operation == "multiply"
      (@number1 * @number2).to_s
    elsif @operation == "divide"
      (@number1 / @number2).to_s
    end
  end
  




end
  require 'sinatra'

  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
    erb :calculator
  end

  post '/calculate' do
    operand1 = params[:operand1].to_f
    operator = params[:operator]
    operand2 = params[:operand2].to_f
    result = calculate(operand1, operator, operand2)
    result.to_s
  end

  def calculate(operand1, operator, operand2)
    case operator
    when '+'
      operand1 + operand2
    when '-'
      operand1 - operand2
    when '*'
      operand1 * operand2
    when '/'
      operand1 / operand2
    else
      'Error: Invalid operator'
    end
  end

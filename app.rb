require_relative 'config/environment'

class App < Sinatra::Base
 
  get "/reversename/:name" do
" #{params[:name].reverse} "
  end

  get "/square/:number" do
  " #{params[:number].to_i**2}"
  end
  get "/say/:number/:pharase"do
  str=""
  params[:number].to_i.times do
    str= str+params[:pharase]+"\n"
  end
  str
end
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    op=params[:operation]
    num1=params[:number1].to_i
    num2=params[:number2].to_i
   
    ans =0
      case op
      when "add"
        ans= num1+num2
        
      when "subtract"
        ans= num1-num2
        
      when "divide"
        ans= num1/num2
        
      when "multiply"
        ans= num1*num2
      else ans="#{op} is not an operator"
      end

      "#{ans}"
  end
    
end
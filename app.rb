require "sinatra"
require "xirr"
include Xirr

get '/xirr' do
  cf = Cashflow.new
  cf << Transaction.new(-1000,  date: Date::strptime('2018-01-01', "%Y-%m-%d"))
  cf << Transaction.new(-2000,  date: Date::strptime('2018-03-01', "%Y-%m-%d"))
  cf << Transaction.new( 4500, date: Date::strptime('2018-07-01', "%Y-%m-%d"))
  return cf.xirr.to_s
end

get '/*' do
  puts 'container: ' + params.to_s
  return params.to_s
end

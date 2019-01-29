require "sinatra"

get '/*' do
  puts 'container: ' + params.to_s
  return params.to_s
end

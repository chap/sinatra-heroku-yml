require "sinatra"

get '/*' do
  puts 'container: ' + params.to_s
  return 'container: ' + params.to_s
end

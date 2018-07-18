require 'sinatra'

get '/' do
  erb :first_last
end

post '/first_last' do
  fname = params[:fname]
  lname = params[:lname]
  redirect '/address?fname=' + fname + '&lname=' + lname
end

get '/address' do
  fname = params[:fname]
  lname = params[:lname]
  erb :address, locals:{fname: params[:fname], lname: params[:lname]}
end

post '/address' do
  fname = params[:fname]
  lname = params[:lname]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  erb :address, locals:{fname: params[:fname], lname: params[:lname]}
  redirect '/fav_nums?fname=' + fname + '&lname=' + lname + '&street=' + street + '&city=' + city + '&state=' + state + '&zip=' + zip
end

get '/fav_nums' do
  fname = params[:fname]
  lname = params[:lname]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  erb :fav_nums, locals:{fname: params[:fname], lname: params[:lname], street: params[:street], city: params[:city], state: params[:state], zip: params[:zip]}
end

post '/fav_nums' do
  fname = params[:fname]
  lname = params[:lname]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  fav_num1 = params[:fav_num1]
  fav_num2 = params[:fav_num2]
  fav_num3 = params[:fav_num3]
    erb :fav_nums, locals:{fname: params[:fname], lname: params[:lname], street: params[:street], city: params[:city], state: params[:state], zip: params[:zip]}
  redirect '/final_page?fname=' + fname + '&lname=' + lname + '&street=' + street + '&city=' + city + '&state=' + state + '&zip=' + zip + '&fav_num1=' + fav_num1 + '&fav_num2=' + fav_num2 + '&fav_num3=' + fav_num3
end

get '/final_page' do
  fname = params[:fname]
  lname = params[:lname]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  fav_num1 = params[:fav_num1]
  fav_num2 = params[:fav_num2]
  fav_num3 = params[:fav_num3]
  erb :final_page, locals:{fname: params[:fname], lname: params[:lname], street: params[:street], city: params[:city], state: params[:state], zip: params[:zip], fav_num1: params[:fav_num1], fav_num2: params[:fav_num2], fav_num3: params[:fav_num3]}
end

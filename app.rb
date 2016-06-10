require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index, layout: :app_layout
end

post "/" do
  $hash = {}
  @namearray = params[:names].to_s.split(", ").shuffle
  puts @namearray
  @method = params[:method].to_s
  puts @method
  @number = params[:number].to_i
  puts @number
  i = 0
  if @method == "team_count"
    teamlimit = @namearray.length/@number
    1.upto(@number) {|x|
      $hash[x] = @namearray[0...teamlimit]
      @namearray.shift(teamlimit)
    }
    1.upto(@namearray.length) { |y|
      $hash[y] << @namearray[y-1]
    }
  p $hash
  else
    hash = {}
    i = 0
   while i < @namearray.length
       hash[i] = @namearray[i..(i+@number-1)]
       i += @number
   end
   i = 1
   hash.each do |x,y|
     $hash[i] = y
     i+=1
   end
  end
  erb :index, layout: :app_layout
end

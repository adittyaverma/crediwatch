class WelcomeController < ApplicationController
	def pro2
    input = params[:str].chars
    out = []
    key = params[:key].to_i
    input.each do |aa|
      if aa[/\d+/].nil?
        tt = aa.ord + key
        if tt > 122
          tt = tt - 122 + 97
        end
        out << tt.chr
      else
        tt = aa.to_i + key
        if tt > 9
          tt = tt - 9 + 0
        end
        out << tt
      end
    end
    render :json => out.join("") 
  end

  def pro1
    aa = params[:str].chars
    arr = []
    count = 1
    aa.each_with_index do |aaa, index|
      if index > 0
        if aaa == aa[index - 1]
          count = count + 1
        else
          count = "" if count == 1
          arr << "#{count}#{aa[index - 1]}"
          count = 1
        end
      end

    end
    count = "" if count == 1
    arr << "#{count}#{aa.last}"
    render :json => arr.join("")
    
  end

end

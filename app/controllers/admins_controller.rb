class AdminsController < ApplicationController


    def manage
        @users = User.all
        #@tweets = Tweet.all
        @page_index = params["page"].to_i
        count = Tweet.count
        @page_number = count/5
        puts @page_number
        @tweets = Tweet.all.limit(5).offset(5*@page_index)
    end

    def search
         tweets = Tweet.all
         
         @result = Array.new

         tweets.each do |t|
            data = t.content.split
              data.each do |d|
                  if d == params["key"]
                     result << d
                     break
                  end
              end
          end

          print @result
    end


    def delete
        t = Tweet.find_by(id:params["id"])
        t .delete
         redirect_to "/admin/manage/1"
    end

end


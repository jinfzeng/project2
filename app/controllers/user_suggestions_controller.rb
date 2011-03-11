class UserSuggestionsController < ApplicationController
  def index
    @usersuggestions = UserSuggestion.all
  end
  
  def create
    userid = cookies.signed[:user_id]
    suggestion = params[:user_suggestion][:suggestion]
    suggestion = suggestion.gsub(/'/,"''")
    conn = ActiveRecord::Base.connection
    sql = "insert into user_suggestion_view (userid,suggestion) values (" + userid.to_s + ",'" + suggestion + "')"
    conn.insert(sql)
    redirect_to :controller => "user_suggestions", :action => "index"
  end
  
  def edit
    @usersuggestion = UserSuggestion.find_by_sugid(params[:id])
  end
  
  def update
  end

end

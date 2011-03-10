class UsersController < ApplicationController
  def new
  end
  
  def create
    fname = params[:user][:first_name]
    lname = params[:user][:last_name]
    username = params[:user][:username]
    password = params[:user][:password]
    division = params[:user][:division]
    department = params[:user][:department]
    usertype = params[:user][:usertype]
    conn = ActiveRecord::Base.connection
    sql = "insert into users_view (first_name,last_name," +
      "username,division,department,usertype,password) " +
      "values ('" + fname + "','" + lname + "','" + username + 
      "','" + division + "','" + department + "','" + usertype +
      "','" + password + "')"
    conn.insert(sql)
    redirect_to :controller => "users", :action => "index"
  end
  
  def edit
    @user = User.find(params[:uid])
  end
  
  def chooseUser
    @users = User.all
  end
  
  def update
    @user = User.find(params[:user][:uid])
    if @user.update_attributes(:first_name => params[:user][:first_name],
      :last_name => params[:user][:last_name],:username => params[:user][:username])
      redirect_to :controller => "users", :action => "index"
    else
      render :action => "edit"
    end
  end
  
  def index
    @users = User.all
  end

end

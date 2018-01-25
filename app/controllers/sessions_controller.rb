class SessionsController < ApplicationController
  def create
    member = Member.authenticate(params[:user_id], params[:hashed_password])
    if member
      session[:user_id] = member.user_id
      redirect_to :action=>"index", :controller=>"rooms"
    else
      redirect_to :root
      flash.alert = "正しく入力してください"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to :root
  end
end

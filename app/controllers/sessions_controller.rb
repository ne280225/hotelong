class SessionsController < ApplicationController
  def create
    member = Member.authenticate(params[:user_id], params[:password])
    if member
      session[:user_id] = member.user_id
    else
      flash.alert = "名前とパスワードが一致しません"
    end
    redirect_to :root
  end

  def destroy
    session.delete(:user_id)
    redirect_to :root
  end
end
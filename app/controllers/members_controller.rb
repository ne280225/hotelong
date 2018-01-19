class MembersController < ApplicationController
  def show
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to root
  end

  def create
    @member = Member.new(member_params)
    if @member.save
    redirect_to controller: 'top', action: 'index'
  else
    render 'new'
 end
end




  def edit
  end


  def update
  end

  def destroy
  end

  private

  def member_params
    params[:member].permit(:user_id, :name, :tel, :address, :sex, :birthday, :email, :admin_authority, :hashed_password)
  end

end

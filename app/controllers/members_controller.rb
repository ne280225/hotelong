class MembersController < ApplicationController
  def show
    @member = Member.find(params[:id])
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
    @member = Member.new(params[:member])
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
    params[:member].permit(:user_name)
    #params[:member].permit(:user_name, :address, :tel, :age, :email, :admin_authority)
  end

end

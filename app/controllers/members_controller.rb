class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to :root
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
    @member = Member.find(params[:id])
  end


  def update
    @member = Member.find(params[:id])
		if @member.update(member_params)
			redirect_to member_path
		else
			render 'edit'
		end
  end


  private

  def member_params
    params[:member].permit(:user_id, :name, :tel, :address, :sex, :birthday, :email, :admin_authority, :hashed_password)
  end

end

class MembersController < ApplicationController
  def show
  end

  def new
    @member = Member.new
  end

  def confirm
  end

  def create
    @member = Member.new(member_params)
 #   if @member.save
    @member.save
    redirect_to top_index_path
#  else
#    render 'new'
# end
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

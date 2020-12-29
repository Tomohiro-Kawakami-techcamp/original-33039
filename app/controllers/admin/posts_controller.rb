class Admin::PostsController < ApplicationController
  before_action :admin_check, only:[:index]

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to  "items#index"
    else
      render action: :index
    end
  end

  private
  def admin_check
    unless user_signed_in? && current_user.admin == 1
        redirect_to new_admin_post_path
        flash[:notice] = "管理者画面です"
    end
  end

  def staff_params
    params.require(:staff).permit(:email, :password, :last_name, :first_name, :position)
  end
end

class StaffsController < ApplicationController
  def index
    @staffs = Staffs.all
  end

  def new
    @staff = Staff.find(params[:id])
  end

  def create
    @staff = Staff.new(staff_params)
  end

  private
  def staff_params
    params.require(:staff).permit(:email, :password, :last_name, :first_name, :position)
  end
end

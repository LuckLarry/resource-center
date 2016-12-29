class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    user = User.find_by_employee_number(params[:employee_number])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:employee_number] = user.employee_number
      if user.admin
        redirect_to users_url  
      else
        redirect_to products_url
      end
    else
      redirect_to login_url, alert: "员工编号或密码输入错误"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "退出"
  end
end

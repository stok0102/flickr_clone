class HomeController < ApplicationController
  def index
    if current_user
      if current_user.account
        render :index
      else
        redirect_to new_account_path
      end
    else
      render :index
    end
  end
end

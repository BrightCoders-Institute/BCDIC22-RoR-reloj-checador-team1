class AdminsController < ApplicationController

  def index
    @login_admin = Administrator.first
  end
end

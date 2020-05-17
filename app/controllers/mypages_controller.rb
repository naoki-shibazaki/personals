class MypagesController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  
  def new
  end
end

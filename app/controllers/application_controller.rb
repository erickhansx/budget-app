class ApplicationController < ActionController::Base
  helper :all
  before_action :authenticate_user!

end

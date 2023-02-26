class PagesController < ApplicationController
  def home
    return unless user_signed_in?
    @groups = Group.where(user_id: current_user.id)
  end
end

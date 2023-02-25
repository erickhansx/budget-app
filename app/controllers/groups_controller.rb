class GroupsController < ApplicationController
  before_action :authenticate_user!
  def show
    @groups = Group.where(user_id: current_user.id)
  end
end
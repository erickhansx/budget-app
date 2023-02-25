class EntitiesController < ApplicationController
  before_action :user_groups, only: [:index, :show]
  def show
    @entity = Entity.where(group_id: params[:id])
  end

  def index
    @entities = Entity.all
  end

  private
  def user_groups
    @groups = Group.where(user_id: current_user.id)
  end
end
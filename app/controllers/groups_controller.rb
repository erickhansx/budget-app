class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def show
    @group = Group.where(user_id: current_user.id)
    @entities = Entity.where(group_id: params[:id])
  end

  def new
    @groups = Group.where(user_id: current_user.id)
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
    if @group.save
      redirect_to groups_path, notice: 'Group created successfully!'
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end

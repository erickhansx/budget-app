class EntitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_groups, only: %i[new index show]
  before_action :entity_find, only: %i[show destroy]
  before_action :check_group_ids, only: :create

  def show; end

  def index
    session[:return_to] = request.original_url
    @entities = Entity.where(user_id: current_user.id)
  end

  def destroy
    @entity.destroy
    redirect_to entities_path
  end

  def new
    user_groups
    @entity = Entity.new
  end

  def create
    group_ids = params[:entity][:group_ids]
    group_ids.each do |group_id|
      @entity = Entity.new(entity_params.except(:group_ids))
      @entity.user_id = current_user.id
      @entity.group_id = group_id
      @entity.save
    end

    redirect_to root_path, notice: 'Entity created successfully!'
  end

  private

  def user_groups
    @groups = Group.where(user_id: current_user.id)
  end

  def entity_find
    @entity = Entity.find(params[:id])
  end

  def entity_params
    params.require(:entity).permit(:name, :amount, group_ids: [])
  end

  def check_group_ids
    return unless params[:entity][:group_ids].blank?

    redirect_to new_entity_path, alert: 'Please select at least one category.'
  end
end

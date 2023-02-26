class PagesController < ApplicationController
  def home
    return unless user_signed_in?

    @groups = Group.all
  end
end

class FriendRequestsController < ApplicationController
  def new
    render "dashboards/show"
  end

  def create

    render "dashboards/show"
  end

  protected

  def configure_create_params
    params.require()
  end
end

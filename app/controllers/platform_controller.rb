class PlatformController < ApplicationController
  def index
    @platforms = Platform.page params[:page]
  end

  def show
    @platform = Platform.find(params[:id])
  end
end

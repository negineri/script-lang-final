class ShareFilesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
    @share_files = ShareFile.all
  end
  def new
    @share_file = ShareFile.new
  end

  def create
    @share_file = ShareFile.new params.require(:share_file).permit(:title, files: []).merge!(user_id: current_user.id)
    if @share_file.save
      redirect_to @share_file
    else
      render :new
    end
  end

  def show
    @share_file = ShareFile.find(params[:id])
  end

  def edit
    @share_file = ShareFile.find(params[:id]) 
  end

  def update
    @share_file = ShareFile.find(params[:id])
    @share_file.update params.require(:share_file).permit(files: [])
    redirect_to @share_file
  end
end

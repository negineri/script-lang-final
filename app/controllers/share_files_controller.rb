class ShareFilesController < ApplicationController
  def new
    @share_file = ShareFile.new
  end

  def create
    @share_file = ShareFile.create params.require(:share_file).permit(files: [])
    redirect_to @share_file
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

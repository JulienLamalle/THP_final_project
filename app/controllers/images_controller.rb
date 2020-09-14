class ImagesController < ApplicationController
  def create
    @project = Project.friendly.find_by_slug(params[:slug])
    @project.images.attach(params[:images])
    redirect_to(project_fr_path(@project))
  end

  def show
    @project = Project.find_by(id: params[:id])
    puts "======="
    puts params
    puts "======="
    respond_to do |format|
      format.js{
      }
    end
  end
end

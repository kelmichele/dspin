class ArchivesController < ApplicationController
  before_action :set_archive, only: [:edit, :show, :update, :destroy, :delete_image_attachment]

  def index
    @archives = Archive.all
  
    @keynotes = Archive.where(category: 'Keynote')
    @chats = Archive.where(category: 'Chat')
    @podcasts = Archive.where(category: 'Podcast')
    # .reorder('order ASC')
  end

  def delete_image_attachment
    @archive.image.purge
    redirect_back(fallback_location: request.referer)
  end

	def new
    @archive = Archive.new
  end

  def create
    @archive = Archive.new(archive_params)

    if @archive.save
	    redirect_to archives_path, notice: "Your past event has been created."
    else
      render :new
    end
  end

  def update
    if @archive.update(archive_params)
      redirect_to archives_path
    else
      render 'edit'
    end
  end

  def show 
  end

  def edit
  end

  def destroy
    @archive.destroy

    redirect_to archives_path
  end

  private
    

	  def set_archive
			@archive = Archive.find(params[:id])
	  end

    def archive_params
      params.require(:archive).permit(:title, :details, :category, :link, :image, :video, :order)
    end
end

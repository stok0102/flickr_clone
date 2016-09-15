class PhotosController < ApplicationController
  def index
    @photos = Photo.order(created_at: :desc)
  end

  def show
    @photo = Photo.find(params[:id])
    @account = Account.find(@photo.creator_id)
    @tag = Tag.new
  end

  def new
    @photo = Photo.new
  end

  def create
    current_user
    @photo = Photo.new(photo_params)
    @photo.creator_id = current_user.account.id
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photo_path(@photo)
    else
      render :edit
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

private
  def photo_params
    params.require(:photo).permit(:caption, :location, :image)
  end
end

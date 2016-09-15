class TagsController < ApplicationController

  def create
    @photo = Photo.find(params[:photo_id])
    @tag = @photo.tags.new(tag_params)
    if @tag.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to photo_path(@photo)
  end

private
  def tag_params
    params.require(:tag).permit(:account_id)
  end
end

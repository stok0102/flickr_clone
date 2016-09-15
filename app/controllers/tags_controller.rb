class TagsController < ApplicationController

  def create
    @photo = Photo.find(params[:photo_id])
    @tag = Tag.new(tag_params)
    @tag.photo_id = @photo.id
    if @tag.save
      redirect_to photo_path(@photo)
    end
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to @photo
  end

private
  def tag_params
    params.require(:tag).permit(:account_id)
  end
end

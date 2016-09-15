require "rails_helper"

describe "delete tag path" do
  it "deletes a tag from a photo" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    photo = FactoryGirl.create(:photo, creator_id: account.id)
    tag = Tag.create(account_id: account.id, photo_id: photo.id)
    visit photo_path(photo)
    click_on "Delete Tag"
    expect(page).to have_content("This photo has no tags")
  end
end

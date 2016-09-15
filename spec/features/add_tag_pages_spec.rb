require "rails_helper"

describe "the tag route" do
  it "adds a tag to a photo" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    photo = FactoryGirl.create(:photo, creator_id: account.id)
    visit photo_path(photo)
    click_on "Create Tag"
    expect(page).to have_content("Pupper")
  end
end

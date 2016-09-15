require 'rails_helper'

describe 'the show photo process' do
  it "displays all photos" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    photo = FactoryGirl.create(:photo, creator_id: account.id)
    visit photos_path
    expect(page).to have_css("img", :count => 1)
  end

  it 'displays a selected photo' do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    photo = FactoryGirl.create(:photo, creator_id: account.id)
    login_as(user, :scope => :user)
    visit photo_path(photo)
    expect(page).to have_content 'Look at this dog!'
  end
end

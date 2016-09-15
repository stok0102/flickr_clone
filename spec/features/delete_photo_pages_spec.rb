require 'rails_helper'

describe 'the delete photo process' do
  it "deletes the photo" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    photo = FactoryGirl.create(:photo, creator_id: account.id)
    login_as(user, :scope => :user)
    visit photo_path(photo)
    click_on 'Delete'
    expect(page).to have_content 'There are no photos.'
  end
end

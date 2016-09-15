require 'rails_helper'

describe 'the edit photo process' do
  it "should allow a logged in user to edit their photo" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    photo = FactoryGirl.create(:photo, creator_id: account.id)
    login_as(user, :scope => :user)
    visit photo_path(photo)
    click_on 'Edit Photo'
    attach_file 'Image', "../super-pupper.png"
    fill_in 'Caption', :with => 'Super Dog'
    fill_in 'Location', :with => 'Metropolis'
    click_on 'Update Photo'
    expect(page).to have_content 'Super Dog'
  end

  it 'should fail to edit if the user leaves parameters blank' do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    photo = FactoryGirl.create(:photo, creator_id: account.id)
    login_as(user, :scope => :user)
    visit photo_path(photo)
    click_on 'Edit Photo'
    fill_in 'Caption', :with => ''
    fill_in 'Location', :with => ''
    click_on 'Update Photo'
    expect(page).to have_content 'Edit Photo'
  end
end

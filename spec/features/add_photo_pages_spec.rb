require 'rails_helper'

describe 'the upload photo process' do
  it "allows user to upload an image with caption and location" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit new_photo_path
    fill_in 'Caption', :with => 'I rate this dog 11/10'
    fill_in 'Location', :with => 'Oregon Beach'
    attach_file 'Image', "../super-pupper.png"
    click_on 'Create Photo'
    expect(page).to have_content 'Oregon Beach'
  end

  it 'should fail to upload if a user does not use a caption' do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit new_photo_path
    click_on 'Create Photo'
    expect(page).to have_content 'Upload a Photo'
  end
end

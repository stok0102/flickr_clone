require 'rails_helper'

describe "the show home process" do
  it 'should show the home page if no user is logged in' do
    visit '/'
    expect(page).to have_content 'Flickr'
  end

  it 'should show the home page if a logged in user has an account' do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit '/'
    expect(page).to have_content 'Flickr'
  end

  it 'should show the new account page if the user is logged in and does not have an account' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/'
    expect(page).to have_content 'New Profile'
  end
end

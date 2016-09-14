require 'rails_helper'

describe 'the edit account process' do
  it "should edit the account information" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit account_path(account)
    click_on 'Edit Profile'
    fill_in 'Name', :with => 'Brunt'
    fill_in 'Zodiac', :with => 'Taurus'
    click_on 'Update Account'
    expect(page).to have_content 'Brunt'
  end

  it "should not edit the account information if a parameter is not entered" do
    user = FactoryGirl.create(:user)
    account = FactoryGirl.create(:account, user_id: user.id)
    login_as(user, :scope => :user)
    visit account_path(account)
    click_on 'Edit Profile'
    fill_in 'Name', :with => ''
    fill_in 'Zodiac', :with => ''
    click_on 'Update Account'
    expect(page).to have_content 'Edit Profile'
  end
end

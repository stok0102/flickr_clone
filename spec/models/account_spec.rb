require 'rails_helper'

describe Account do
  it { should validate_presence_of :name }
  it { should validate_presence_of :zodiac }
  it { should have_many :tags }
  it { should have_many(:photos).through :tags }
end

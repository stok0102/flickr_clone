require 'rails_helper'

describe Photo do
  it { should validate_presence_of :caption }
  it { should have_many :tags }
  it { should have_many(:accounts).through :tags }
end

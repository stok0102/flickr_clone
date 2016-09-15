require 'rails_helper'

describe Tag do
  it { should validate_presence_of :photo_id }
  it { should validate_presence_of :account_id }
  it { should belong_to :photo }
  it { should belong_to :account }
end

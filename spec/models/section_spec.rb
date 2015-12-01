require 'rails_helper'

describe Section do
  it { should have_many :questions }
end

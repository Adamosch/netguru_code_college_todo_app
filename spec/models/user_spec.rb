require "rails_helper"

describe User do
  describe "associations" do
    it do
      is_expected.to have_many(:tasks).dependent(:destroy)
    end
  end
end

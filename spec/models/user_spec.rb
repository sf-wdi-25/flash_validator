require 'rails_helper'

describe User do

  let(:user) { FactoryGirl.build(:user) }

  describe User do
    it { should validate_presence_of(:first_name) }
    it { should validate_length_of(:first_name).is_at_most(255) }

    it { should validate_presence_of(:last_name) }
    it { should validate_length_of(:last_name).is_at_most(255) }


    it { should validate_presence_of(:password) }
    it { should ensure_length_of(:password).is_at_least(8) }
    it { should ensure_length_of(:password).is_at_most(72) }
    it { should have_secure_password }

    it { should validate_presence_of(:email) }
    it { should validate_length_of(:email).is_at_most(255) }
    it { should validate_uniqueness_of(:email).case_insensitive }

    context "a valid email" do
      it "should contain an @ symbol" do
        user.email = "asdf"
        expect{spot.save!}.to raise_error
      end
    end
  end
end

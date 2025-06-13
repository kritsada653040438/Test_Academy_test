require 'rails_helper'

RSpec.describe Quest, type: :model do
  subject { described_class.new(name: "Create Unit test", details: "Write test case for Model", status: true) }

  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).not_to be_valid
      expect(subject.errors[:name]).to include("can't be blank")
    end

    it "is valid without details" do
      subject.details = nil
      expect(subject).to be_valid
      expect(subject.errors[:details]).to be_empty
    end

    it "is not valid with invalid status" do
      subject.status = nil
      expect(subject).not_to be_valid
      expect(subject.errors[:status]).to include("is not included in the list")
    end

    it "is valid with status true or false" do
      subject.status = true
      expect(subject).to be_valid

      subject.status = false
      expect(subject).to be_valid
    end
  end
end

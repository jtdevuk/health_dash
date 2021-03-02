require 'rails_helper'

RSpec.describe Medication, type: :model do
  subject { Medication.new(name: "Warfarin",
                           description: "Anticoagulant",
                           remaining: 10) }
  it "should be valid with valid parameters" do
    expect(subject).to be_valid
  end
  it "should not be valid with no name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "should not be valid with no description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

end

require 'rails_helper'

RSpec.describe Flight, type: :model do
  describe "validations" do
    it { should validate_presence_of :number }
    it { should validate_presence_of :date }
    it { should validate_presence_of :time }
    it { should validate_presence_of :dep_city }
    it { should validate_presence_of :arr_city }
    it { should validate_uniqueness_of :number }
  end

  describe "relationships" do
    it { should belong_to :airline } 
    it { should have_many(:flight_passangers) } 
    it { should have_many(:passangers).through(:flight_passangers) } 
  end
end

require 'rails_helper'

RSpec.describe Passanger, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
  end

  describe "relationships" do
    it { should have_many(:flight_passangers) } 
    it { should have_many(:flights).through(:flight_passangers) } 
  end
  
end

require "bike"
describe Bike do 
bike = Bike.new
it "should be working" do 
expect(bike.working?).to eq true
end
end 
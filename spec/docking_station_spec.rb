require 'docking_station'
describe DockingStation do
docking_station = DockingStation.new
it { is_expected.to respond_to :release }
end

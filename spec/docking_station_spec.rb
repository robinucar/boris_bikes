require 'docking_station'
describe DockingStation do
    describe "docking_station should respond to release bike" do
    it { is_expected.to respond_to :release_bike }
end
end

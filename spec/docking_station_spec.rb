require 'docking_station'
describe DockingStation do
   describe "#release_bike" do 
    docking_station = DockingStation.new
        it {is_expected.to respond_to(:release_bike)}
    end

    describe "#release_bike" do
        it "releases a bike" do
            bike = Bike.new
            subject.dock_bike(bike)
            expect(subject.release_bike).to eq (bike)
        end
        it "should get an error if there is not any bike in the station" do
            expect {subject.release_bike}.to raise_error 'No bikes available'
        end
        it "released bike and then check if bike works" do
            bike = Bike.new
           expect(bike).to respond_to 'working?'
        end
    end
    describe "#dock_bike" do
      it {is_expected.to respond_to(:dock_bike)}
      it "adds a Bike object into @dock" do
        bike = Bike.new
        expect(subject.dock_bike(bike)).to eq([bike])
        
      end
      it 'raises an error when full' do
        subject.capacity.times { subject.dock_bike(Bike.new) }
        expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
      end
     
    end
    describe 'initialize' do
        subject {DockingStation.new}
        let(:bike) {Bike.new}
        it 'has default capacity' do
            described_class::DEFAULT_CAPACITY.times do
                subject.dock_bike(bike)
            end
            expect{subject.dock_bike(bike)}.to raise_error 'Docking station full'
        end
    end
end

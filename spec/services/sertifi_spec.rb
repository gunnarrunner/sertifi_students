require 'rails_helper'

RSpec.describe SertifiService do
  before :each do
  end

  describe 'class methods' do
    describe '.students', :vcr do
      it 'can get a response for sertifi' do
        service = SertifiService.students

        expect(service.class).to eq(Array)
        # expect(service[:results].class).to eq(Array)
        # expect(service[:results][0][:locations][0]).to have_key(:latLng)
      end
    end
  end
end
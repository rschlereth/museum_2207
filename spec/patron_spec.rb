require './lib/exhibit'
require './lib/patron'

RSpec.describe Patron do
    it 'exists' do
        patron_1 = Patron.new("Bob", 20)
        expect(patron).to be_instance_of(Patron)
    end

    it
end    
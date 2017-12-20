require 'reverse_in_place'

describe '#reverse' do
    it 'reverses a string in place' do
        expect(reverse('hello')).to eq('hello'.reverse)
    end
end
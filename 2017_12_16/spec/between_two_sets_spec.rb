require 'between_two_sets'

describe '#getTotalX' do
    context 'Set A and Set B are sets of integers where' do
        context 'All elements in A are a factor of x, and x is a factor of all elements in B' do
            it 'returns total number of possible X values given A and B' do
                expect(getTotalX([2,4],[16, 32, 96])).to eq(3)
            end
        end
    end
end
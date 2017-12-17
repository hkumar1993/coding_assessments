require 'between_two_sets'

describe 'lcm' do
    it 'returns the lowest common multiple' do
        expect(lcm([2,4])).to eq(4)
        expect(lcm([5,6])).to eq(30)
        expect(lcm([3,6,9])).to eq(18)
    end
end

describe 'gcf' do
    it 'returns the greatest common factor' do
        expect(gcf([2,4])).to eq(2)
        expect(gcf([15,20])).to eq(5)
    end
end

describe '#getTotalX' do
    context 'Set A and Set B are sets of integers where' do
        context 'All elements in A are a factor of x, and x is a factor of all elements in B' do
            it 'returns total number of possible X values given A and B' do
                expect(getTotalX([2,4],[16, 32, 96])).to eq(3)
                expect(getTotalX([3,9, 6],[36, 72])).to eq(2)
            end
        end
    end
end
require 'kangaroo'

describe '#kangaroo' do
    it 'returns true if two kangaroos will intersect' do
        expect(kangaroo(0,3,4,2)).to be_truthy
    end

    it 'returns false if two kangaroos will not interesect' do
        expect(kangaroo(0,2,5,3)).to be_falsey
    end
end
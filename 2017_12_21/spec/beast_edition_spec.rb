require 'beast_edition'

describe '#beast_edition' do

    let(:test1) { [1,2,3,4,5,6,7,8.9,10,3].shuffle }
    let(:test2) { [1,1,1,1,2,3,4,5,6,7,8.9,10].shuffle }

    it 'finds the duplicate number' do
        expect(beast_edition(test1)).to eq(3)
        expect(beast_edition(test2)).to eq(1)
    end
end
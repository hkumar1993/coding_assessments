require 'range_minimum_query'

describe "#range_minimum_query" do
    
    let(:arr) { [ 31, 41, 59, 26, 53, 58, 97, 93 ] } 

    it "returns the minimum element in the given range" do
        expect(range_minimum_query(arr,1,4)).to eq(26)
        expect(range_minimum_query(arr,0,3)).to eq(31)
        expect(range_minimum_query(arr,4,7)).to eq(53)
    end
    
end

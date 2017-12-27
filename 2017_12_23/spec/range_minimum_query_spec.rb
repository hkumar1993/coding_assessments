require 'range_minimum_query'

describe "#range_overlap?" do

    it "returns 0 if partial overlap" do
        expect(range_overlap?((1..5),(2..4))).to eq(0)  
        expect(range_overlap?((3..5),(2..4))).to eq(0)  
        expect(range_overlap?((3..5),(2..4))).to eq(0)  
    end
    
    it "returns 1 if total overlap" do
        expect(range_overlap?((2..2),(2..4))).to eq(1)  
        expect(range_overlap?((2..3),(2..4))).to eq(1)  
        expect(range_overlap?((2..3),(1..5))).to eq(1)  
    end
    
    

end


describe "#range_minimum_query" do
    
    let(:arr) { [ 31, 41, 59, 26, 53, 58, 97, 93 ] } 

    it "returns the minimum element in the given range" do
        expect(range_minimum_query(arr,1,4)).to eq(26)
        expect(range_minimum_query(arr,0,3)).to eq(31)
        expect(range_minimum_query(arr,4,7)).to eq(53)
    end
    
end

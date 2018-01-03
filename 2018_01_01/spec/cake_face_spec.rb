require 'cake_face'

describe "#cake_face" do
    let(:cake_set_1) { [[7, 160], [3, 90], [2, 15]] }
    let(:cake_set_2) { [[1, 30], [50, 200]]}
    
    it "returns maximum value possible in duffel bag" do
        expect(cake_face(cake_set_1, 20)).to eq(555)
        expect(cake_face(cake_set_2, 100)).to eq(3000)
    end
    
end

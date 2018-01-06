require 'n_in_a_row'

describe "#check_win?" do
    let(:win_input) { 
        [
            ['x','','o'],
            ['x','o',''],
            ['x','', '']
        ]
    }
    it "checks if the current element is n-in-a-row" do
        expect(check_win?(3, 'x', 0, 0, input)).to be_truthy
        expect(check_win?(3, '0', 0, 2, input)).to be_truthy
    end
    
end

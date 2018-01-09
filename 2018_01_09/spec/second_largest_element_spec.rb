require 'binary_tree_node'
require 'second_largest_element'

describe "#second_largest_element" do
    let(:tree_sample) { build_tree([1,2,3,4,5,6,7,8,9].shuffle) } 
    context "Helper method to #find_max" do
        it "finds maximum value of tree" do
            expect(find_max(tree_sample).value).to  eq(9)
        end
    end

    it "finds the second largest element" do
        expect(second_largest_element(tree_sample).value).to  eq(8)
    end
    
    
end

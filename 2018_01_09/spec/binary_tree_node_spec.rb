require 'binary_tree_node'

describe "BinaryTreeNode" do
    context "Method to build tree" do

        let(:build_node) { build_tree([1]) } 
        let(:build_simple_tree) { build_tree([2,1,3]) } 
        let(:build_simple_tree) { build_tree([2,1,3]) } 

        it "returns root node" do
            expect(build_node.value).to  eq(1)
        end
        
        it "correctly builds tree" do
            expect(build_simple_tree.value).to  eq(2)
            expect(build_simple_tree.left.value).to  eq(1)
            expect(build_simple_tree.right.value).to  eq(3)
        end
        
    end
end

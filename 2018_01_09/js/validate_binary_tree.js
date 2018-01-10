function BinaryTreeNode(value) {
    this.value = value;
    this.left = null;
    this.right = null;
}

BinaryTreeNode.prototype.insertLeft = function (value) {
    this.left = new BinaryTreeNode(value);
    return this.left;
};

BinaryTreeNode.prototype.insertRight = function (value) {
    this.right = new BinaryTreeNode(value);
    return this.right;
};

function validateTree(rootNode, lowerBound = -Infinity, upperBound = Infinity) {
    // console.log("VALIDATING: ", !!rootNode ? rootNode.value : 'nil' )
    // console.log("Lower: ", lowerBound)
    // console.log("Upper: ", upperBound)
    
    if(!rootNode) return true;
    
    if (rootNode.value <= lowerBound || rootNode.value >= upperBound){
        return false
    }

    return validateTree(rootNode.left, lowerBound, rootNode.value) && 
        validateTree(rootNode.right, rootNode.value, upperBound)
}

let a1 = new BinaryTreeNode(5)
let b1 = a1.insertLeft(3)
let c1 = b1.insertLeft(2)
let d1 = b1.insertRight(4)
let e1 = a1.insertRight(7)
let f1 = e1.insertLeft(6)
let g1 = e1.insertRight(8)

let a2 = new BinaryTreeNode(5)
let b2 = a2.insertLeft(3)
let c2 = b2.insertLeft(2)
let d2 = b2.insertRight(4)
let e2 = a2.insertRight(7)
let f2 = e2.insertLeft(2)
let g2 = e2.insertRight(8)

console.log('Test 1', validateTree(a1))
console.log('Test 2', validateTree(a2))
// Give an array of integers, find the highest product possible from 3 three integers

function productOfThree( array ) {

    let largestNumber = Math.max(array[0], array[1])
    let smallestNumber = Math.min(array[0], array[1])
    
    let largestProductOfTwo = array[0] * array[1]
    let smallestProductOfTwo = array[0] * array[1]
    
    let largestProductOfThree = array[0] * array[1] * array[2]
    let smallestProductOfThree = array[0] * array[1] * array[2]

    for( let i = 3; i < array.length; i++){
        const el = array[i]
        
        largestProductOfThree = Math.max(largestProductOfThree, largestProductOfTwo * el)
        smallestProductOfThree = Math.max(smallestProductOfThree, smallestProductOfTwo * el)
        
        largestProductOfTwo = Math.max(largestProductOfTwo, largestNumber * el)
        smallestProductOfTwo = Math.min(smallestProductOfTwo, smallestNumber * el)
        
        largestNumber = Math.max(largestNumber, el)
        smallestNumber = Math.min(smallestNumber, el)
    }
    
    return Math.max( largestProductOfThree, smallestProductOfThree )

    // const sortedArray = array.sort( (a,b) => { return a - b } )
    // let product1 = sortedArray.slice(3).reduce( (acc, el) => { return acc * el })
    // let product2 = sortedArray.slice(1).concat(sortedArray.slice(0,2)).reduce((acc, el) => { return acc * el })
    // return Math.max(product1, product2)
}

const test = [ -10, -10, 1, 3, 2]

console.log(productOfThree(test))
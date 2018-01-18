// Give an array of integers, find the highest product possible from 3 three integers

function productOfThree( array ) {
    const sortedArray = array.sort( (a,b) => { return a - b } )
    let product1 = sortedArray.slice(3).reduce( (acc, el) => { return acc * el })
    let product2 = sortedArray.slice(1).concat(sortedArray.slice(0,2)).reduce((acc, el) => { return acc * el })
    return Math.max(product1, product2)
}
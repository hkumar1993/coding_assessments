// Given an array of integers, find the product of all the numbers except the number at that index
// Example: [ 1, 7, 3, 4 ] => [ 84, 12, 28, 21 ]
// Catch: Do NOT use division

/*
    [
        7 * 3 * 4,
        1 * 3 * 4,
        1 * 7 * 4,
        1 * 7 * 3
    ]

    [ 1 *( 1 ), 1 *( 1 * 1 ), 1 * (1 * 1 * 7) , 1 *( 1 * 1 * 7 * 3) ]
    [ 1 *( 1 )*( 4 * 3 * 7), 1 *( 1 * 1 )*(4 * 3), 1 * (1 * 1 * 7)*(4) , 1 *( 1 * 1 * 7 * 3) ]
*/

const testArray = [ 1, 7, 3, 4 ]

function arrayProduct (array){
    const result = new Array(array.length)
    result.fill(1)
    let currentProduct = 1
    
    for (let i = 0; i < array.length; i++) {
        result[i] *= currentProduct
        currentProduct *= array[i];
    }

    currentProduct = 1
    for ( let i = array.length - 1; i >= 0; i--){
        result[i] *= currentProduct
        currentProduct *= array[i];
    }

    return result
}

console.log( arrayProduct( [1,0,3,4] ))
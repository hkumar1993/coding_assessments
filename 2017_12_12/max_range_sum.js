function maxRangeSum(arr) {

    // Tracking two max's,
    let max = null; // => Overall max
    let current_max = 0; // => Contiguous Max

    arr.forEach(function(el){
        current_max += el;
        if (current_max < 0){
            current_max = 0; // => Reset contiguous max if it is negative
        }
        if ( max === null || max < current_max ){
            max = current_max; // => Replace overall max if it is smaller than contiguous max
        }
    })
    return max;
}
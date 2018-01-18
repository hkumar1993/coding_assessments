let stockPricesYesterday = [10, 9, 8, 7, 6, 5]

function getMaxProfit(stockPrices){
    let max = {
        value: -Infinity,
        index: null
    }

    let min = {
        value: Infinity,
        index: null
    }

    let tempMax = Object.assign({}, max)

    let tempMin = Object.assign({}, min)

    stockPrices.forEach(function(price, index){

        const current_gain = tempMax.value - tempMin.valuea

        if (price < tempMin.value) {
            tempMin.value = price
            tempMin.index = index
        }
        
        if (price > tempMax.value){
            tempMax.value = price
            tempMax.index = index
        }

        finalMinMax = checkMax( tempMin, tempMax, min, max )
        max = finalMinMax.max
        min = finalMinMax.min
    })
    return diff(max,min)
}

function checkMax( tempMin, tempMax, min, max ) {
    const currentDiff = diff(max, min)
    const tempDiff = diff(tempMax, tempMin)
    if (tempDiff > currentDiff){
        return {
            max: tempMax,
            min: tempMin
        }
    } else {
        return {
            max,
            min
        }
    }
}

function diff (max, min){
    if(max.index > min.index){
        return max.value - min.value
    } else {
        return -Infinity
    }
}

console.log(getMaxProfit(stockPricesYesterday))
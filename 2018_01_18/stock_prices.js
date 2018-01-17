let stockPricesYesterday = [10, 7, 5, 8, 11, 9]

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

        const current_gain = tempMax.value - tempMin.value

        if (price < tempMin.value) {
            tempMin.value = price
            tempMin.index = index
        }
        
        if (price > tempMax.value){
            tempMax.value = price
            tempMax.index = index
        }
    })
}
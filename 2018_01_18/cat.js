if (process.argv.length < 3) {
  console.log('Usage: node ' + process.argv[1] + ' FILENAME');
  process.exit(1);
}

// Read the file and parse its contents
var fs = require('fs')

filename = process.argv[2];

function splitAndParse(string) {
  return string.split(' ').map((el) => { return parseInt(el) })
}

fs.readFile(filename, 'utf8', function(err, data) {
  if (err) throw err;
  console.log('Data given: ', data)
  
  let variables
  let n
  let k
  let array
  
  data = data.split('\n')
  variables = data[0]
  array = data[1]

  variables = splitAndParse(variables)
  n = variables[0]
  k = variables[1]

  array = splitAndParse(array)

  // Run function
  console.log(windowedTrends( n, k, array ))

});

// [ 5, 4, 5, 6, 6, 8 ]
// [ 5 , 4, 5, 6 ]
// [ -1, 1, 1 ]
//  1

// [ 1, 2, 3, 4, 5, 2 , 3]
// [ 1, 1+1, 1+2, -1, 1 ]
// 3
// 2

// Helper function to parse data from text file


function windowedTrends( n, k, range ){
  let trendsWindow = new limitedQueue( k- 1 )
  let subTrend = 0
  let currentValue = range[0]
  let consecutive = 0

  for (let id = 1; id < range.length; id++) {
    const el = range[id];
    // console.log('Current Value:', currentValue)
    // console.log('Current Trend Window:', trendsWindow.store)
    // console.log('Current Consecutive:', consecutive)
    // console.log('Current SubTrend:', subTrend)
    // console.log('\n~~~~~~~~\n')

    let currentTrend = compare(el, currentValue)

    if (currentTrend === trendsWindow.last()) {
      // console.log('~~~~~')
      // console.log('Last:', trendsWindow.last())
      // console.log('Trend:', currentTrend)
      // console.log('~~~~~')
      if(currentTrend === 1){
        consecutive += 1
      } else {
        consecutive -= 1
      }
    }

    let poppedTrend = trendsWindow.push(currentTrend)

    if (poppedTrend !== null) {
      console.log(subTrend)
      subTrend -= poppedTrend
      subTrend -= consecutive
      if (consecutive > 0){
        consecutive -= 1
      } else {
        consecutive += 1
      }
    }

    
    currentTrend += consecutive
    subTrend += currentTrend

    currentValue = el
  }
  console.log(subTrend)
}

function compare(val1, val2){
  if(val1 > val2) return 1
  if(val1 < val2) return -1
  if(val1 === val2) return 0
}

// Custom Queue with max length to be used as the window of trends
// Pushing into the queue will either return null if queue is less than the window size
// Pushing into the queue will shift and return the first element out if the queue is already full

function limitedQueue(length){
  this.store = []
  this.maxLength = length

  this.length = function(){
    return this.store.length
  }

  this.first = function(){
    return this.store[0]
  }

  this.last = function () {
    return this.store.length > 0 ? this.store[this.store.length - 1] : null
  }

  this.push = function(val){
    let poppedElement
    if(this.store.length === this.maxLength ) poppedElement = this.store.shift()
    this.store.push(val)
    return poppedElement === undefined ? null : poppedElement
  }
  
}
function findDuplicate(array){
    for (let i = 0; i < array.length; i++) {
        console.log(array)
        let pointer = Math.abs(array[i]-1)
        let numberAtPointer = array[pointer]
        if(numberAtPointer > 0){
            array[pointer] = -numberAtPointer
        } else {
            return Math.abs(numberAtPointer)
        }
    }
    return -1
}

const testArray = [1,2,2]

console.log(findDuplicate(testArray))
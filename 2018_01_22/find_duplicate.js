function findDuplicate(array){
    for (let i = 0; i < array.length; i++) {
        let pointer = Math.abs(array[i]) - 1
        let numberAtPointer = array[pointer]
        console.log(array)
        console.log(pointer)
        console.log(numberAtPointer)
        if(numberAtPointer > 0){
            array[pointer] = -numberAtPointer
        } else {
            return Math.abs(array[i])
        }
    }
    return -1
}

const testArray = [8, 4, 6, 2, 6, 4, 7, 9, 5, 8]

console.log(findDuplicate(testArray))
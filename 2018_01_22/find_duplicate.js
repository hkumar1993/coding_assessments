function findDuplicate(array){
    console.log(array)
    for (let i = 0; i < array.length; i++) {
        let pointer = Math.abs(array[i]-1)
        let numberAtPointer = array[pointer]
        if(numberAtPointer > 0){
            array[pointer] = -numberAtPointer
        } else {
            return Math.abs(numberAtPointer)
        }
        console.log(array)
    }
    return -1
}
// find first duplicate number in an arry 
// where the second appearance of the number appears earliest 
// Time: O(n)
// Space: O(1)

function firstDuplicate(a) {
    for (let i = 0; i < a.length; i++) {
        let pointer = Math.abs(a[i]) - 1
        let numAtPointer = a[pointer]
        if (numAtPointer > 0) {
            a[pointer] = -numAtPointer
        } else {
            return Math.abs(a[i])
        }
    }
    return -1
}

const testArray = [2, 3, 3, 1, 5, 2]

console.log(firstDuplicate(testArray) === 3)
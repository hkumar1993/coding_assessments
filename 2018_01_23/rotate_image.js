// [ 1, 2, 3, 4]
// [ 5, 6, 7, 8]
// [ 9,10,11,12]
// [13,14,15,16]
// 
// step1 => transpose
// [ 1, 5, 9,13]
// [ 2, 6,10,14]
// [ 3, 7,11,15]
// [ 4, 8,12,16]
// 
// step2 => reverse all rows
// [13, 9, 5, 1]
// [14,10, 6, 2]
// [15,11, 7, 3]
// [16,12, 8, 4]
// 



function rotateImage(a) {
    a = transposeImage(a)
    a = reverseRows(a)
    return a
}

function transposeImage(a) {
    for (let i = 0; i < a.length; i++) {
        for (let j = i; j < a.length; j++) {
            let temp = a[i][j]
            a[i][j] = a[j][i]
            a[j][i] = temp
        }
    }
    return a
}

function reverseRows(a) {
    for (let i = 0; i < a.length; i++) {
        for (let j = 0; j < a.length / 2; j++) {
            let temp = a[i][j]
            a[i][j] = a[i][a.length - j - 1]
            a[i][a.length - j - 1] = temp
        }
    }
    return a
}
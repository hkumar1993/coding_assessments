function isCryptSolution(crypt, solution) {
    const key = {}
    solution.forEach(function (keyval) {
        key[keyval[0]] = keyval[1]
    })
    // console.log(key)

    let a = convertCrypt(crypt[0], key)
    let b = convertCrypt(crypt[1], key)
    let c = convertCrypt(crypt[2], key)

    console.log(a)
    console.log(b)
    console.log(c)

    return a + b === c
}

function convertCrypt(crypt, key) {
    let final = crypt.split('').map(function (c) {
        return key[c]
    }).join('')
    if (final[0] === '0') {
        if (final.length === 1) {
            return 0
        } else {
            return -1
        }
    } else {
        return parseInt(final)
    }
}
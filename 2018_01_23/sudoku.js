function sudoku2(grid) {

    // check all rows & columns

    if (!checkRowsAndColumns(grid)) {
        return false
    }


    for (let i = 0; i < 3; i++) {
        for (let j = 0; j < 3; j++) {
            let rowDisplaced = i * 3
            let colDisplaced = j * 3
            if (!checkBox(rowDisplaced, colDisplaced, grid)) {
                return false
            }
        }
    }
    return true
}

function checkBox(rowDisplaced, colDisplaced, grid) {
    const countEl = {}
    for (let i = 0; i < 3; i++) {
        for (let j = 0; j < 3; j++) {
            el = grid[i + rowDisplaced][j + colDisplaced]

            if (el === '.') continue;

            if (!countEl[el]) {
                countEl[el] = true
            } else {
                return false
            }
        }
    }
    return true
}

function checkRowsAndColumns(grid) {
    for (let i = 0; i < grid.length; i++) {
        const numCountRow = {}
        const numCountCol = {}

        for (let j = 0; j < grid.length; j++) {
            const elRow = grid[i][j]
            const elCol = grid[j][i]

            if (elRow !== '.') {
                if (!numCountRow[elRow]) {
                    numCountRow[elRow] = true
                } else {
                    return false
                }
            }

            if (elCol !== '.') {
                if (!numCountCol[elCol]) {
                    numCountCol[elCol] = true
                } else {
                    return false
                }
            }

        }
    }
    return true
}

function transpose(a) {
    let transposed = new Array(a.length)
    for (let i = 0; i < a.length; i++) {
        transposed[i] = new Array(a[i].length)
    }

}
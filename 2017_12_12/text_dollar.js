function textDollar(num) {
    // Begin with subdividing number into 3 digits blocks
    let textNum = subDivideHundreds(num);

    // Translate each block into text
    textNum = textNum.map(function(subHundred){
        return translateHundred(subHundred);
    });

    // Add each blocks base ( thousand, million, etc )
    textNum = textNum.map(function(word, id){
        return `${word}${BASES[id]}`
    });

    // Convert array into single string in proper format
    textNum = textNum.reverse().join('');
    return `${textNum}Dollars`
}

// Subdivide number into hundreds
// Example : 123456 => [ 456, 123 ]
function subDivideHundreds(num) {
    let hundreds = [];
    while ( num > 0 ){
        hundreds.push( num % 1000 );
        num = Math.floor( num/1000 );
    }
    return hundreds;
}

// Translates number block into text
// Example: 123 => 'OneHundredTwentyThree'
function translateHundred(num) {
    let hundreds = Math.floor( num / 100 );
    let tens = Math.floor( num / 10 ) % 10;
    let ones = num % 10;
    
    if( tens === 1 ){
        tens = tens * 10 + ones;
        ones = 0;
    }

    hundreds = !!hundreds ? `${DIGITS[hundreds]}Hundred` : ``;
    tens = !!tens ? `${TENS[tens]}` : ``;
    ones = !!ones ? `${DIGITS[ones]}` : ``;

    return `${hundreds}${tens}${ones}`
}

// Set up constants

const BASES = {
    0: '',
    1: 'Thousand',
    2: 'Million',
    3: 'Billion'
};

const DIGITS = {
    1: 'One',
    2: 'Two',
    3: 'Three',
    4: 'Four',
    5: 'Five',
    6: 'Six',
    7: 'Seven',
    8: 'Eight',
    9: 'Nine'
};

const TENS = {
    2: 'Twenty',
    3: 'Thirty',
    4: 'Forty',
    5: 'Fifty',
    6: 'Sixty',
    7: 'Seventy',
    8: 'Eighty',
    9: 'Ninety',
    10: 'Ten',
    11: 'Eleven',
    12: 'Twelve',
    13: 'Thirteen',
    14: 'Fourteen',
    15: 'Fifteen',
    16: 'Sixteen',
    17: 'Seventeen',
    18: 'Eighteen',
    19: 'Nineteen'
};
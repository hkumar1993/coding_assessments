function check(input){
    let result = ''
    let isComment = false
    let isMultiLine = false
    for (let i = 0; i < input.length; i++) {
        const char = input[i]
        if (isComment) {
            result += char
            if (isMultiLine && char === '/') {
                if (input[i + 1]) { result += input[i + 1] }
                isComment = false
                isMultiLine = false
            }

            if (!isMultiLine && char === `\n`) {
                //console.log("NEWLINE")
                isComment = false
            }

        } else {
            if (char === '/') {
                result += char
                if (input[i + 1] === '*') {
                    isComment = true
                    isMultiLine = true
                } else if (input[i + 1] === '/') {
                    isComment = true
                }
            }
        }
    }
    console.log(result)
}
test = "/*This is a program to calculate area of a circle after getting the radius as input from the user*/\n
#include < stdio.h >\n
    int main()\n
{\n
    double radius, area;//variables for storing radius and area\n
    printf("Enter the radius of the circle whose area is to be calculated\n");\n
    scanf("%lf",& radius);//entering the value for radius of the circle as float data type\n
    area = (22.0 / 7.0) * pow(radius, 2);//Mathematical function pow is used to calculate square of radius\n
    printf("The area of the circle is %lf", area);//displaying the results\n
}\n
/*A test run for the program was carried out and following output was observed\n
If 50 is the radius of the circle whose area is to be calculated\n
The area of the circle is 7857.1429*/'\n"

check(test)
# Array.lua
Funny roblox modulescript to go over 1.7e308

NOTE: Is very slow but accurate to the decimal point.

Number: Anything within 0 to 1.7e308
Scientific: NumbereNumber (Numberx10^Number)
Array: {num,x10x}

# Functions
Converting:

    array.new(num:number) -- Makes a new array from a number input.

    array.fromScientific(scientific:string) -- Makes a new array from a scientific number input.

    array.toNumber(array:array) -- Converts the array into a number.

    array.toScientific(array:array) -- Converts the array into a scientific number.

Basic Math:

    array.add(a:array,b:array) -- Adds the two arrays together to make a new array.

    array.sub(a:array,b:array) -- Subtracts the two arrays together to make a new array.

    array.mul(a:array,b:array) -- Multiplies the two arrays together to make a new array

    array.div(a:array,b:array) -- Divides the two arrays together to make a new array.

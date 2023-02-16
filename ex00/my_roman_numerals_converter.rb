# define a function that tales a single argument to be converted
def my_roman_numerals_converter(number)
    # creat a hash(numeral_dictionary) that maps each decimal value to it's corresponding roman numeral
    numeral_dictionary = {
        1000 => 'M',
        900 => 'CM',
        500 => 'D',
        400 => 'CD',
        100 => 'C',
        90 => 'XC',
        50 => 'L',
        40 => 'XL',
        10 => 'X',
        9 => 'IX',
        5 => 'V',
        4 => 'IV',
        1 => 'I'
    }

    #initialize an empty string to hold the result
    roman_numeral = ''

    #loop through each key_value pair in the dictionary
    numeral_dictionary.each do |value, symbol|
        #while argument(number) is greater than or equal to the current decimal value, append the corresponding Roman numeral to `roman_numeral` and subtract the decimal value from `number`
        while number >= value
            roman_numeral += symbol
            number -= value
        end
    end
    #return the resulting roman numeral as a string
    return roman_numeral
end

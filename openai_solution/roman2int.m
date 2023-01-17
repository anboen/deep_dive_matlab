% this function was generated my ChatGTP
function num = roman2int(str)
    % Define a dictionary of Roman numeral values
    roman_dict = containers.Map({'I', 'V', 'X', 'L', 'C', 'D', 'M'}, ...
                               {1, 5, 10, 50, 100, 500, 1000});

    % Initialize the output variable
    num = 0;

    % Loop through the characters in the input string
    for i = 1:length(str)
        if i == length(str) || roman_dict(str(i)) >= roman_dict(str(i+1))
            % If this is the last character or the current character has a
            % higher or equal value than the next character, add its value
            % to the output variable
            num = num + roman_dict(str(i));
        else
            % If the current character has a lower value than the next
            % character, subtract its value from the output variable
            num = num - roman_dict(str(i));
        end
    end
end

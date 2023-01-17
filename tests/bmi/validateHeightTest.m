
classdef validateHeightTest < matlab.unittest.TestCase

    methods (Test)
        %% Test BMI good
        function goodCaseTest(testCase)
            height = 1.88;
            exp_validity = true;
        
            actual_validity = validateHeight(height);
            verifyEqual(testCase,actual_validity,exp_validity)
        end
         %% Test BMI error
        function badCaseTest(testCase)
            height = 2.7;
            exp_validity = false;
        
            actual_validity = validateHeight(height);
            verifyEqual(testCase,actual_validity,exp_validity)
        end
    end
end
 
    


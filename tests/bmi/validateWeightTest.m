
classdef validateWeightTest < matlab.unittest.TestCase

    methods (Test)
        %% Test BMI good
        function goodCaseTest(testCase)
            weight = 55;
            exp_validity = true;
        
            actual_validity = validateWeight(weight);
            verifyEqual(testCase,actual_validity,exp_validity)
        end
         %% Test BMI error
        function badCaseTest(testCase)
            weight =161;
            exp_validity = false;
        
            actual_validity = validateWeight(weight);
            verifyEqual(testCase,actual_validity,exp_validity)
        end
    end
end
 
    


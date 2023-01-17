
classdef calcBMITest < matlab.unittest.TestCase

    methods (Test)
        %% Test BMI good
        function goodCaseTest(testCase)
            height = 1.88;
            weight = 82;
            exp_bmi = 23.2;
        
            act_bmi = calcBMI(height, weight);
            verifyEqual(testCase,act_bmi,exp_bmi)
        end
         %% Test BMI error
        function errorThrowTest(testCase)
            height = 0;
            weight = 82;
            try 
                calcBMI(height, weight);
                verifyFail(testCase)
            catch
                % what we expect
            end
        end
    end
end
 
    


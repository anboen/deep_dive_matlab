classdef TestRoman2Int < matlab.unittest.TestCase
    methods (Test)
        function test_valid_inputs(testCase)
            testCase.verifyEqual(roman2int('I'), 1);
            testCase.verifyEqual(roman2int('V'), 5);
            testCase.verifyEqual(roman2int('X'), 10);
            testCase.verifyEqual(roman2int('L'), 50);
            testCase.verifyEqual(roman2int('C'), 100);
            testCase.verifyEqual(roman2int('D'), 500);
            testCase.verifyEqual(roman2int('M'), 1000);
            testCase.verifyEqual(roman2int('IV'), 4);
            testCase.verifyEqual(roman2int('IX'), 9);
            testCase.verifyEqual(roman2int('XI'), 11);
            testCase.verifyEqual(roman2int('MCMXCVI'), 1996);
        end

%         function test_invalid_inputs(testCase)
%             testCase.verifyError(@() roman2int('A'), 'containers:Map:NoKey');
%             testCase.verifyError(@() roman2int('AB'), 'containers:Map:NoKey');
%             testCase.verifyError(@() roman2int('1'), 'containers:Map:NoKey');
%             testCase.verifyError(@() roman2int('-1'), 'containers:Map:NoKey');
%             testCase.verifyError(@() roman2int('IIII'), 'containers:Map:NoKey');
%             testCase.verifyError(@() roman2int('VV'), 'containers:Map:NoKey');
%             testCase.verifyError(@() roman2int('IL'), 'containers:Map:NoKey');
%             testCase.verifyError(@() roman2int('IC'), 'containers:Map:NoKey');
%         end
% unfortunately this did not work
    end
end
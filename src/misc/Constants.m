% Defines the class that holds all constants

classdef Constants
    properties
        RefNum;
    end
    methods
        function obj = Constants() % Constructor
            var = jsondecode(fileread('Project.json'));
            obj.RefNum = var.ConstantDefinitions.ReferenceFrameNumber;
        end
    end
end
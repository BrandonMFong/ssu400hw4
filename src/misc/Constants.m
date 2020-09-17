% Defines the class that holds all constants

classdef Constants
    properties
        Xaxis;
    end
    methods
        function obj = Constants() % Constructor
            var = jsondecode(fileread('Project.json'));
            obj.Xaxis = var.Constants.Xaxis;
        end
    end
end
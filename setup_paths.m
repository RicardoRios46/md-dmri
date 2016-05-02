function setup_paths(do_restore_path)
% function setup_paths(do_restore_path)
%
% Restores the default paths and adds all relevant subdirs to the
% path. Run this when you start MATLAB to use the code.
%
% do_restore_path - optional, defaults to true

if (nargin < 1), do_restore_path = 1; end

clc;
disp('Welcome!');
disp('Restoring default path');

if (do_restore_path)
    restoredefaultpath;
end

packages_dir = {...
    'mdm', ...
    'mio', ...
    'mio/elastix', ...
    'msf', ...
    'models/dtd_pa',...
    'models/dti_euler',...
    'models/dti_nls',...
    'models/erf',...
    'models/fexi11',...
    'models/gamma',...
    'models/quick_dti',...
    'models/saupe',...
    'models/vasco16',...
    'tools/tensor_maths', ...
    'tools/uvec', ...
    'tools/man', ...
    };


t = fileparts(mfilename('fullpath'));

for c_package = 1:numel(packages_dir)
    addpath(fullfile(t, packages_dir{c_package}), '-end');
end

disp (char(10))
disp 'Done configuring paths for framework!'


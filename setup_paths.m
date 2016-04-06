function setup_paths(do_restore_path)
% function setup_paths()
%
% Restores the default paths and adds all relevant subdirs to the
% path. Run this when you start MATLAB to use the code.

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
    'models/dti_nls',...
    'models/vasco16',...
    'models/fexi11',...
    'models/quick_dti',...
    'models/dti_euler',...
    'models/axsym_pa',...
    'tools/tensor_maths', ...
    'tools/qmas', ...
    'tools/uvec', ...
    'tools/man', ...
    };


t = fileparts(mfilename('fullpath'));

for c_package = 1:numel(packages_dir)
    addpath(fullfile(t, packages_dir{c_package}), '-end');
end

disp (char(10))
disp 'Done configuring paths for framework!'


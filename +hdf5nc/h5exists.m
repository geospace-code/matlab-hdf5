function exists = h5exists(file, varnames)
% check if variable(s) exists in HDF5 file
%
% parameters
% ----------
% file: HDF5 filename
% varname: name of variable inside HDF5 file
%
% returns
% -------
% exists: boolean (scalar or vector)

arguments
  file (1,1) string
  varnames (1,:) string
end

i = startsWith(varnames, "/");
varnames(i) = extractAfter(varnames(i), 1);
% NOT contains because we want exact string match
exists = ismember(varnames, hdf5nc.h5variables(file));

end % function

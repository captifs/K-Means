
% functia ce citeste din fisiere 

function [NC points] = read_input_data(file_params, file_points)
	NC = 0;
	points = [];
	fid1 = fopen(file_params);
	NC = fscanf(fid1,"%f");
	  fid2 =  fopen(file_points);
  points = dlmread(fid2,'',5, 0);
end


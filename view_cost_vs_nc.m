function view_cost_vs_nc(file_points)

    y = [];
  fid2 =  fopen(file_points);
  points = dlmread(fid2,' ',5, 1);
  
    for NC = 1: 10;
        cost = compute_cost_pc(points,clustering_pc(points, NC));
    y = [y cost];
    end
    x = 1 : 10;
    plot(x, y);
    ylabel("Cost");
    xlabel("Cluster count");
end


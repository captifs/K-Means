function cost = compute_cost_pc(points, centroids)
	cost = 0;
p = 1; 
      while (p <=  length(points(:,1)))
        d = distance(repmat(points(p,:),length(centroids(:,1)) , 1), centroids);

        [d, index] = min(d);

        cost += d;
        p++;
    end
end

function view_clusters(points, centroids)

    G = [];
  p1 = points(:,1);
  p2 = points(:,2);
  p3 = points(:,3);
  p = 1;
    while (p <= length(p1)) 
        x = repmat(points(p,:), length(centroids(:,1)) , 1);
        y = centroids;
        d = ((sum(((x - y).^2)')).^(1/2))';

        [d, idx] = min(d);

        G = [G; idx ];
        p++;
    end
    scatter3(p1,p2,p3, [], G);
    rotate3d on;
end

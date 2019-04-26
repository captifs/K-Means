
function centroids = clustering_pc(points, NC)
	centroids = [];
  cen = 1;
    lp = size(points(:,1));
      if (lp/NC < 1)
        centroids(1:NC, :) = points(1:NC, :);
      else
        centroids = rand(NC, 3);
       end

    
    while cen  > 0
        reactualizat = zeros(NC, 3);
        pt_cls = zeros(NC, 1);
        relations = [];

        for p = 1:lp
            x = repmat(points(p,:), NC , 1);
            y = centroids;
            d = ((sum(((x - y).^2)')).^(1/2))';
            [d, i] = min(d);

            relations = [ relations; i ];

            reactualizat(relations(p), :) = points(p, :) + reactualizat(relations(p), :);
        end


        for c = 1:NC
            pt_cls(c, 1) = sum(relations == c);

            if (pt_cls(c, 1))
                reactualizat(c, :) = reactualizat(c, :) / pt_cls(c, 1);
            else
                reactualizat(c, :) = (rand(1, 3) .* max(points) .- min(points)) + min(points);
            end
        end
      diff = reactualizat - centroids;
        cen = norm(diff);
        centroids = reactualizat;
    end
end

class SpaceTrip
  def walk (planet, moves, dist_hash, neighborhoods_hash, visited_hash)
    min = -1
    if(moves == 0)
      min = 0
    else
      visited_hash[planet] = true
      neighborhoods_hash[planet].each do |neighbor|
        if(!visited_hash[neighbor])
          visited_hash[neighbor] = true;
          path_dist = dist_hash[[planet, neighbor]] + walk(neighbor, moves-1, dist_hash, neighborhoods_hash, visited_hash)
          if(min == -1)
            min = path_dist
          elsif(path_dist < min)
            min = path_dist
          end
          visited_hash[neighbor] = false;
        end
      end
      visited_hash[planet] = false
    end
    min
  end

  def travel(planets, moves)
    dist_hash = {}
    neighborhoods_hash = {}
    visited_hash = {}
    list_planets = []

    planets.each_line do |line|
      line = line.delete("\n").split(" = ")
      dist = line[1].to_i
  
      planet = line[0].split(" para ")

      #keep the distances between planet 0  and 1
      dist_hash[planet] = dist
      planet = [planet[1], planet[0]]
      dist_hash[planet] = dist

      #add the neighborhood
      if(neighborhoods_hash[planet[0]] == nil)
        neighborhoods_hash[planet[0]] = []
      end
      neighborhoods_hash[planet[0]].push(planet[1])

      if(neighborhoods_hash[planet[1]] == nil)
        neighborhoods_hash[planet[1]] = []
      end
      neighborhoods_hash[planet[1]].push(planet[0])

      #havent visited anybody
      visited_hash[planet[0]] = false
      visited_hash[planet[1]] = false

    end

    min = -1

    #try from different starts
    neighborhoods_hash.each do |planet, list|
      if(min == -1)
        min = walk(planet, moves-1, dist_hash, neighborhoods_hash, visited_hash)
      else
        min = [min, walk(planet, moves-1, dist_hash, neighborhoods_hash, visited_hash)].min
      end
    end

    min
  end
end





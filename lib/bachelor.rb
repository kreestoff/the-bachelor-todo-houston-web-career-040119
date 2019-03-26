def get_first_name_of_season_winner(data, season)
  winner = nil 
  data.each do |season_hash, array|
    if season_hash == season 
      array.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].split(" ")[0]
        end
      end
    end 
  end
  winner
end

def get_contestant_name(data, occupation)
  answer = nil 
  data.each do |season_hash, array|
    array.each do |contestant|
      if contestant["occupation"] == occupation
        answer = contestant["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  counter = []
  data.each do |season_hash, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1 
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  answer = nil 
  data.each do |season_hash, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        answer = contestant["occupation"]
      end
    end
  end
  answer
end

def get_average_age_for_season(data, season)
  # code here
end








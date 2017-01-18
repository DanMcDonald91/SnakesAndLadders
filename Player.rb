class Player

  attr_reader :player_name , :player_posistion

def initialize(player_name)

  @player_name = player_name
  @player_posistion = 1
end

def move(places_moved)
@player_posistion = @player_posistion + places_moved
  
end
end

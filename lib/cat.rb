class Cat
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def change_mood(mood)
    @mood = mood
  end
end 	

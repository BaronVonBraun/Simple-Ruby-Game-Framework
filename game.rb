require './lib/system.rb'
include System

class Game
  def initialize
    init_display [1024,768]
    init_event_queue
  end

  def run
    while event = @event_queue.wait
      p event
      break if event.is_a? Rubygame::Events::KeyPressed
    end  
  end
end

Game.new.run

class Tag < ActiveRecord::Base
  belongs_to :project
  
  def self.st
    puts "st"
  end
  
  def self.honban
    Hage.hi 
  end
end

class Hage
  def self.hi
    puts 'hi'
  end
end

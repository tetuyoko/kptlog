require File.dirname(__FILE__) + '/modcopy'

module Batch 
  def self.st
    m = ModCopy.new
    m.st
    m.logend
  end

  def self.honban
    m = ModCopy.new
    m.honban
    m.logend
  end
  
  def self.st_em
    m = ModCopy.new
    m.st
    m.logend
  end

  def self.honban_em
    m = ModCopy.new
    m.honban
    m.logend
  end
end

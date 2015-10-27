class Hurricane
  attr_accessor :name

  def self.parse hsh
    obj = Hurricane.new
    obj.name = hsh['stormInfo']['stormName_Nice']
    obj
  end
end

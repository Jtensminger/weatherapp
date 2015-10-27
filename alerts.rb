class Alerts
  attr_accessor :message

  def self.parse hsh
    obj = Alerts.new
    obj.message = hsh['message']
    obj
  end
end

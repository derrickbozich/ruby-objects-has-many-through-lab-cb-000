class Doctor
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end
end

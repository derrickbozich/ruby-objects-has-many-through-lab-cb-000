class Patient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|a| a.patient = self}
  end

  def doctors
    appointments.map {|a| a.doctor}
  end
end

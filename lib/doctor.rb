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

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|a| a.doctor = self}
  end

  def patients
    appointments.map {|a| a.patient}
  end
end

# class Appointment
#   attr_accessor :date, :patient, :doctor
#
#   @@all = []
#
#   def self.all
#     @@all
#   end
#
#   def initialize(date, patient, doctor)
#     @date = date
#     @patient = patient
#     @doctor = doctor
#     @@all << self
#   end
# end
#
# class Patient
#   attr_accessor :name
#
#   @@all = []
#
#   def self.all
#     @@all
#   end
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def new_appointment(date, doctor)
#     appointment = Appointment.new(date, self, doctor)
#   end
#
#   def appointments
#     Appointment.all.select {|a| a.patient = self}
#   end
#
#   def doctors
#     appointments.map {|a| a.doctor}
#   end
# end
#
# doctor_robert = Doctor.new("Doctor Robert")
# rafael_the_parrot = Patient.new("Rafael The Parrot")
# doctor_robert.new_appointment()

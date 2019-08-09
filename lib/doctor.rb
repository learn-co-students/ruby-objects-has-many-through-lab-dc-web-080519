class Doctor
  attr_accessor :name
# The Doctor class needs a class variable @@all that begins as an empty array.
  @@all = []

  # The Doctor class needs a class method .all that lists each doctor in the class variable.
  def self.all
    @@all
  end

  # A doctor should be initialized with a name and be saved in the @@all array.
  def initialize(name)
    @name = name
    @@all << self
  end

  # The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  # The Doctor class needs an instance method, #appointments, that iterates through all Appointments and finds those belonging to this doctor.
  def appointments
    Appointment.all.find_all do |appointment|
      appointment.doctor == self
    end
  end


  # The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end
end

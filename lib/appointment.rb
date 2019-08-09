class Appointment
  attr_reader :date, :patient, :doctor
  # The Appointment class needs a class variable @@all that begins as an empty array.
  @@all = []

  # The Appointment class needs a class method .all that lists each Appointment in the class variable.
  def self.all
    @@all
  end

  # An Appointment should be initialized with a date (as a string, like "Monday, August 1st"), a patient, and a doctor. The Appointment should be saved in the @@all array.
  def initialize(date, patient, doctor)
    @date, @patient, @doctor = date, patient, doctor
    @@all << self
  end
end

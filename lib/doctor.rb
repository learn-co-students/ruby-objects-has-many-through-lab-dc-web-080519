require 'pry'

class Doctor

    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |myappointments|
            myappointments.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map do |myappointments|
            #binding.pry
            myappointments.patient
        end
    end

end
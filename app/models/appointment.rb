class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def datetime_format
        self.appointment_datetime.strftime("%B %e, %Y at %R")
    end

    def patient_name
        self.patient.name
    end

    def doctor_name
        self.doctor.name
    end
end

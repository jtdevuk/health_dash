# frozen_string_literal: true

namespace :daily_check do
  desc 'TODO'
  task check_meds: :environment do
    Medication.check_low_meds
  end

  task check_apps: :environment do
    Appointment.reminder
  end
end

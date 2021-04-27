require 'sidekiq-scheduler'

class Medication
  include Sidekiq::Worker

  def perform
    puts User.last
  end
end
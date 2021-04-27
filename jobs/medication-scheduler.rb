require 'sidekiq-scheduler'
require 'rake'

class Medication
  include Sidekiq::Worker

  def perform
    rake 'db:migrate'
  end
end
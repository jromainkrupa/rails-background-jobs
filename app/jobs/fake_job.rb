class FakeJob < ApplicationJob
  queue_as :default

  def perform(user_id:)
    user = User.find(user_id)

    return unless user


    puts "I'm starting the fake job"
    sleep 10
    puts "OK I'm done now"
  end
end




FakeJob.perform_later(user_id: current_user.id)
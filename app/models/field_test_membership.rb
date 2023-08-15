class FieldTestMembership < ApplicationRecord
  belongs_to :user

  def initialize(experiment, user)
    @experiment = experiment
    @user = user
  end

  def self.enabled?(experiment, current_user)
    FieldTest::Experiment.find(experiment).variant(current_user) == "enable"
  end


  def self.enable(experiment, current_user)
    FieldTestMembership.find(experiment).variant(current_user).update
  end

  def self.enable(experiment, current_user)
    current_user.field_test_memberships.update(variant: "enable")
  end

  def self.disable(experiment, current_user)
    current_user.field_test_memberships.update(variant: "disable")
  end

  # field_test_converted(experiment, participant: current_user)

end

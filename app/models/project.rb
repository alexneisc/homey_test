# frozen_string_literal: true

class Project < ApplicationRecord
  include Projects::ActsAsStateMachine

  has_many :status_histories

  def history
    self.status_histories
  end
end

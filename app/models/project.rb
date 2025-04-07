# frozen_string_literal: true

class Project < ApplicationRecord
  include Projects::ActsAsStateMachine

  has_many :status_histories
  has_many :comments
  has_many :histories
end

# frozen_string_literal: true

class Project < ApplicationRecord
  include Projects::ActsAsStateMachine

  has_many :status_histories, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :histories
end

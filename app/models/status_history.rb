# frozen_string_literal: true

class StatusHistory < ApplicationRecord
  belongs_to :project
  belongs_to :user
end

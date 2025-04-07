# frozen_string_literal: true

class History < ApplicationRecord
  belongs_to :project
  belongs_to :user
end

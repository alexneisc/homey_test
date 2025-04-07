# frozen_string_literal: true

module Projects
  module ActsAsStateMachine
    extend ActiveSupport::Concern

    included do
      include AASM

      enum :status, { created: 0, in_progress: 1, on_hold: 2, done: 3 }

      aasm column: :status, enum: true do
        state :created, initial: true
        state :in_progress
        state :on_hold
        state :done
      end
    end
  end
end

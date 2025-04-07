# frozen_string_literal: true

class Project < ApplicationRecord
  include Projects::ActsAsStateMachine


  def history
    []
  end
end

# frozen_string_literal: true

class University < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :name, :country, :webpage, presence: true
end

class Objection < ActiveRecord::Base
  validates :title, :objection, :rebuttal, :tag, presence: true
end

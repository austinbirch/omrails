class Objection < ActiveRecord::Base
  validates :title, :objection, :rebuttal, :tag, presence: true


  belongs_to :user
  validates :user_id, presence: true
end

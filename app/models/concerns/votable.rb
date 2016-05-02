module Votable
  extend ActiveSupport::Concern

  included do
    has_many :votes,
    as: :votable,
    class_name: "Vote",
    dependent: :destroy
  end

  def votes_sum
    self.votes.sum(:value)
  end
end

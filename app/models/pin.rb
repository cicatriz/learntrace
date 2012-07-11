class Pin < ActiveRecord::Base
  attr_accessible :item_id

  belongs_to :user
  belongs_to :item, :counter_cache => true

  validates :user_id, presence: true
  validates :item_id, presence: true

  scope :todo, where(:status => "todo")
  scope :doing, where(:status => "doing")
  scope :done, where(:status => "done")

end

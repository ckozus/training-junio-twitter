class Tweet < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :asset, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :asset, content_type: /\Aimage\/.*\Z/

  validates :message, presence: true

end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  has_many :followings

  def follows?(other_user)
    if followings.where(followee_id: other_user.id).first
      true
    else
      false
    end
  end
end

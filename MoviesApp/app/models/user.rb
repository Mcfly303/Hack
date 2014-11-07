class User < ActiveRecord::Base
  #Adding user avater via paperclip
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #comment out devise [delete]
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
end

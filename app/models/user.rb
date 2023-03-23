#,format:{with: /\AQ[^@\s]+@[^@\s]+\z/,message:"enter valid email"}
#   <%= stylesheet_link_tag "application",media:'all',"data-turbo-track": "reload" %>
# <%= javascript_include_tag "application", "data-turbo-track": "reload" %>
class User < ApplicationRecord
  has_secure_password
  has_many :leaves,class_name: "Leave",dependent: :destroy
  has_many :payslips, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_one :profile, dependent: :destroy
  validates :email, presence:true,uniqueness: true
end

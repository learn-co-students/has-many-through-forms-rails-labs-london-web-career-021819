class Comment < ActiveRecord::Base
  belongs_to :user
  accepts_nested_attributes_for :user, reject_if: :new_record?
  belongs_to :post

end

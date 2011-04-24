class Course < ActiveRecord::Base
  validates_presence_of :title , :begin_date, :end_date, :body
end

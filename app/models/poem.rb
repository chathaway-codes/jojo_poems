class Poem < ActiveRecord::Base
  belongs_to :user
  belongs_to :author
  belongs_to :license
end

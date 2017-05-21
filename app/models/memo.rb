class Memo < ActiveRecord::Base
    has_many :memo_comments
end

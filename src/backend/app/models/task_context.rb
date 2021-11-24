class TaskContext < ApplicationRecord
    belongs_to :task
    belongs_to :context
end

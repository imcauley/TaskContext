class Task < ApplicationRecord
    has_many :task_contexts
    has_many :contexts, through: :task_contexts
end

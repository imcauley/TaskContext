module Mutations
    class CreateTask < BaseMutation
        argument :title, String, required: true
        argument :description, String, required: true
    
        type Types::TaskType
    
        def resolve(title: nil, description: nil)
          Link.create!(
            title: title,
            description: description,
            finished: false,
            assigned: nil
          )
        end
    end
end    
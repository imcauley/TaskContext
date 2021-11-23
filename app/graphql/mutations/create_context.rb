module Mutations
    class CreateContext < BaseMutation
        description "Creates a new context"

        argument :name, String, required: true
    
        type Types::ContextType
    
        def resolve(name: nil)
            Context.create(
                name: name,
                generated: false
            )
        end
    end
end    
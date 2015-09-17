module Printing

    class JsonModel

        include Virtus.model

        def to_json(*a)
            self.to_hash
        end

    end

end

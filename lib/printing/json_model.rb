module Printing

  class JsonModel

    include Virtus.model

    def to_json(opts = {})
      JSON.generate(self.to_hash)
    end

  end

end

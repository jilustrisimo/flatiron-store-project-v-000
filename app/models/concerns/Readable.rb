module Readable
  module InstanceMethods
    def to_frac(*args)
      args[0].to_f / 100
    end
  end
end

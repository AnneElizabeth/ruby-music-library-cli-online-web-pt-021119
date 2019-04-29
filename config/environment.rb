require 'bundler'
Bundler.require

module Concerns
  module Findable
    def find_by_name(name)
      self.all.detect {|obj| obj.name == name}
    end
  end
end

require_all 'lib'

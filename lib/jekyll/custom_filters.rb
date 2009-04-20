module Jekyll
  module Filters
    module Custom
      def self.extensions; @@extensions; end

      @@extensions = [ ]
    
      def self.included(base)
        @@extensions << base
      end
    end
  end
end
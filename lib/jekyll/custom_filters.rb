module Jekyll
  module Filters
    module Custom
      def self.extensions; @@extensions; end

      @@extensions = [ ]
    
      def self.included(base)
        @@extensions << base
      end
      
      def self.invoke_filter(name, params)
        self.send(name, params)
      end
    end
    
    module Basic
      include Jekyll::Filters::Custom
      
      def hello_world(input)
        "Hello World!"
      end
    end
  end
end
require File.dirname(__FILE__) + '/helper'

class TestFilters < Test::Unit::TestCase
  class JekyllCustomFilter
    
  end

  context "custom filters" do
    setup do
      
    end

    should "load into the extensions" do
      assert_equal 1, Jekyll::Filters::Custom.extensions.length 
    end
  end
end


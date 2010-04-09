require 'test_helper'
require 'rails/performance_test_help'

class BenchTest < ActionController::PerformanceTest
  %w(render_empty_text partial_10 partial_100 partial_1000 coll_10 coll_100 coll_1000 uniq_10 uniq_100 uniq_1000 template_1).each do |name|
    class_eval(<<-EOS)
      def test_#{name}
        get '/posts', :method_name => '#{name}'
      end
    EOS
  end

  def test_partial
    get '/posts/1', :method_name => 'partial'
  end
end

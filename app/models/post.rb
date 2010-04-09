class Post < Hash
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  class << self
    DEFAULT_VALUES = { :title => "title", :body => "body" }

    def stub
      new(DEFAULT_VALUES)
    end

    def all(num = 10)
      num.times.map { stub }
    end

    def find(id)
      stub
    end
  end
end

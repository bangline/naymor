module Naymor
  class List
    def initialize(list)
      @list = list.readlines
    end

    def pick
      list.sample.chomp
    end

    private

      attr_reader :list
  end
end

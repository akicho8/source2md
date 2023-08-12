module Source2MD
  class RegexpBuilder
    attr_accessor :prefix_re
    attr_accessor :comment_re

    def initialize
      update do |e|
        e.prefix_re  = %r{^\s*}
        e.comment_re = %r{#|//}
      end
    end

    def update(&block)
      yield self
      reset
    end

    def meta_re
      @meta_re ||= %r{#{prefix_re}(?:#{comment_re})}
    end

    def stdout_re
      @stdout_re ||= %r{^(?:#{comment_re}) >>.*$}
    end

    private

    def reset
      @meta_re = nil
      @stdout_re = nil
    end
  end
end

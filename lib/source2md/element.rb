module Source2MD
  class Element
    KEY_VALUE = /^#\+(\S+):\s*(.*)\R?/

    PLUGINS = [
      Type::ElementReject,      # require "setup"
      Type::ElementMdHeader,    # ---
      Type::ElementMdTitle,     # ## foo ##
      Type::ElementInclude,     # #+include: foo.txt
      Type::ElementTitle,       # #+title2: foo
      Type::ElementWarn,        # #+warn: foo
      Type::ElementAlert,       # #+alert: foo
      Type::ElementMethod,      # #+name: foo
      Type::ElementTable,       # |-
      Type::ElementDeepComment,
      Type::ElementSourceBlock, # #+BEGIN_SRC
      Type::ElementUncomment,   # foo
      Type::ElementPartialCode, # 1 + 2 # => 3
      Type::ElementElse,
    ]

    def initialize(content)
      @content = content
    end

    def to_md
      support_klass.new(self).to_md
    end

    def head
      @content.scan(KEY_VALUE).to_h.symbolize_keys.freeze
    end

    def body
      @content.remove(KEY_VALUE).strip.freeze
    end

    private

    def support_klass
      PLUGINS.find { |e| e.accept?(self) }
    end
  end
end

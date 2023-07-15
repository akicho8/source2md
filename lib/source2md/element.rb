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
      object = support_klass.new(self)
      object.to_md.tap do |e|
        debug_log(e)
      end
    end

    def head
      @content.scan(KEY_VALUE).to_h.symbolize_keys.freeze
    end

    def body
      @content.remove(KEY_VALUE).strip.freeze
    end

    private

    def support_klass
      @support_klass ||= PLUGINS.find { |e| e.accept?(self) }
    end

    def debug_log(md)
      Source2MD.logger.debug do
        o = []
        o << "-" * 80
        o << object.class.name
        o << ""
        o << "head:"
        o << head
        o << ""
        o << "in:"
        o << body
        o << ""
        o << "out:"
        o << md
        o << "-" * 80
        o.compact * "\n"
      end
    end
  end
end

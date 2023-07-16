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
      debug_log(object)
      object.to_md
    end

    def head
      @head ||= @content.scan(KEY_VALUE).to_h.symbolize_keys.freeze
    end

    def body
      @body ||= @content.remove(KEY_VALUE).strip.freeze
    end

    private

    def support_klass
      @support_klass ||= PLUGINS.find { |e| e.accept?(self) }
    end

    def debug_log(object)
      Source2MD.logger.debug do
        o = []
        o << "-" * 80 + " " + object.class.name
        o << head
        o << "-" * 60 + " " + "in"
        o << body
        o << ""
        o << "-" * 60 + " " + "out"
        o << object.to_md
        o << "-" * 60
        s = o.compact * "\n"
        s.gsub(/^/, "> ")
      end
    end
  end
end

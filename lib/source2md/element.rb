module Source2MD
  class Element
    KEY_VALUE_REGEXP = /^#\+(\S+):\s*(.*)\R?/ # #+key: value

    PLUGINS = [
      Formatter::ElementReject,      # require "setup"
      Formatter::ElementMdHeader,    # ---
      Formatter::ElementMdTitle,     # ## foo ##
      Formatter::ElementInclude,     # #+include: foo.txt
      Formatter::ElementTitle,       # #+title2: foo
      Formatter::ElementWarn,        # #+warn: foo
      Formatter::ElementAlert,       # #+alert: foo
      Formatter::ElementMethod,      # #+name: foo
      Formatter::ElementTable,       # # |-
      Formatter::ElementSourceBlock, # #+BEGIN_SRC
      Formatter::ElementUncomment,   # # foo
      Formatter::ElementPartialCode, # 1 + 2 # => 3
      Formatter::ElementElse,
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
      @head ||= @content.scan(KEY_VALUE_REGEXP).to_h.freeze
    end

    def body
      @body ||= @content.remove(KEY_VALUE_REGEXP).strip.freeze
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

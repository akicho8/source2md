module Source2MD
  class Element
    KEY_VALUE_REGEXP = /^#\+(\S+):\s*(.*)\R?/ # #+key: value

    PLUGINS = [
      Part::ElementReject,      # require "setup"
      Part::ElementMdHeader,    # ---
      Part::ElementMdTitle,     # ## foo ##
      Part::ElementInclude,     # #+include: foo.txt
      Part::ElementTitle,       # #+title2: foo
      Part::ElementWarn,        # #+warn: foo
      Part::ElementAlert,       # #+alert: foo
      Part::ElementMethod,      # #+name: foo
      Part::ElementTable,       # # |-
      Part::ElementSourceBlock, # #+BEGIN_SRC
      Part::ElementUncomment,   # # foo
      Part::ElementPartialCode, # 1 + 2 # => 3
      Part::ElementElse,
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
      @head ||= @content.scan(KEY_VALUE_REGEXP).to_h.symbolize_keys.freeze
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

module Source2MD
  class Element
    KEY_VALUE = /^#\+(\S+):\s+(.*)\R?/

    PLUGINS = [
      Type::ElementReject,
      Type::ElementMdHeader,
      Type::ElementSharp,
      Type::ElementTitle3,
      Type::ElementTitle2,
      Type::ElementWarn,
      Type::ElementAlert,
      Type::ElementMethod,
      Type::ElementTable,
      Type::ElementDeepComment,
      # Type::ElementMdCodeBlock,
      Type::ElementSourceBlock,
      Type::ElementUncomment,
      Type::ElementPartialCode,
      Type::ElementElse,
    ]

    def initialize(content)
      @content = content
    end

    def to_md
      support_klass.new(self).to_md
    end

    def head
      @content.scan(KEY_VALUE).to_h.symbolize_keys
    end

    def body
      @content.remove(KEY_VALUE).strip
    end

    private

    def support_klass
      PLUGINS.find { |e| e.accept?(self) }
    end
  end
end

module Source2MD
  class Element
    PLUGINS = [
      Formatter::TypeHidden,       # #+hidden: true
      Formatter::TypeEval,         # #+eval:
      Formatter::TypeCodeInclude,  # #+code_include: path/to/foo.html xml:SAMPLE.xml
      Formatter::TypeRawInclude,   # #+raw_include: path/to/file.txt
      Formatter::TypeParseInclude, # #+parse_include: path/to/file.txt
      Formatter::TypeTitle,        # #+title2: foo
      Formatter::TypeWarn,         # #+warn: foo
      Formatter::TypeAlert,        # #+alert: foo
      Formatter::TypeMethod,       # #+name: foo
      Formatter::TypeTable,        # # |-
      Formatter::TypeSourceBlock,  # #+BEGIN_SRC

      # Type that just removes the comment and does not wrap it
      Formatter::TypeMdHeader,     # # ---
      Formatter::TypeCodeBlock,    # # ```
      Formatter::TypeQuote,        # # > xxx
      Formatter::TypeList,         # # - xxx or 1. xxx
      Formatter::TypeUrlList,      # # http.*
      Formatter::TypeInlineImage,  # # ![]

      # Sentence (automatic wrap)
      Formatter::TypeText,         # # foo

      # Code block without wrapping
      Formatter::TypePartialCode,  # 1 + 2 # => 3

      # If not all match
      Formatter::TypeElse,
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
      @head ||= @content.scan(key_value_regexp).to_h.freeze
    end

    def body
      @body ||= @content.remove(key_value_regexp).freeze
    end

    private

    def support_klass
      @support_klass ||= yield_self do
        Source2MD.logger.debug { "head: #{head.inspect}" }
        Source2MD.logger.debug { "body: #{body.inspect}" }
        PLUGINS.find do |e|
          e.accept?(self).tap do |result|
            Source2MD.logger.debug { "#{e} => #{result}" }
          end
        end
      end
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

    # #+key: value
    def key_value_regexp
      /^#{RE.meta_re}\+(\S+):\s*(.*)\R?/
    end
  end
end

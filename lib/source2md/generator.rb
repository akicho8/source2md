module Source2MD
  class Generator
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end

    def call
      if !output_file
        puts to_md
      end

      if output_file
        if output_file.exist?
          FileUtils.chmod("a+w", output_file)
        end
        output_file.write(to_md)
        if Source2MD.readonly
          FileUtils.chmod("a-w", output_file)
        end
        puts "write: #{output_file}"
      end
    end

    def to_md
      s = sections.collect(&:to_md) * "\n\n"
      s = TextHelper.blank_lines_squish(s)
      s = TextHelper.eol_enter(s)
    end

    private

    def sections
      @sections ||= files.collect { |e| Section.new(e.read) }
    end

    def files
      @files ||= Array(params[:files]).collect { |e| Pathname(e).expand_path }
    end

    def output_file
      @output_file ||= yield_self do
        if v = params[:output_file]
          Pathname(v).expand_path
        end
      end
    end
  end
end

require "fileutils"

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
        temporarily_disable_write_protection do
          output_file.write(to_md)
          puts "write: #{output_file}"
        end
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
      @files ||= yield_self do
        if params[:glob]
          Pathname.glob(params[:glob])
        else
          Array(params[:files]).collect { |e| Pathname(e).expand_path }
        end
      end
    end

    def output_file
      @output_file ||= yield_self do
        if v = params[:output_file]
          Pathname(v).expand_path
        end
      end
    end

    def temporarily_disable_write_protection
      if output_file.exist?
        FileUtils.chmod("a+w", output_file)
      end

      yield

      if Source2MD.readonly
        FileUtils.chmod("a-w", output_file)
      end
    end
  end
end

module Source2MD
  class Generator
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end

    def call
      output_file.write(to_md)
      puts "write: #{output_file}"
    end

    private

    def to_md
      s = sections.collect(&:to_md) * "\n\n"
      s = TextHelper.blank_lines_squish(s)
      s = TextHelper.add_newline_at_end_of_text(s)
    end

    def sections
      @sections ||= files.collect { |e| Section.new(e.read) }
    end

    def files
      @files ||= params[:files].collect { |e| Pathname(e) }
    end

    def output_file
      @output_file ||= Pathname(params[:output_file]).expand_path
    end
  end
end

module Source2MD
  class Cli < Thor
    class_option :debug,           type: :boolean, aliases: "-d", default: false
    class_option :xmp_out_exclude, type: :boolean, aliases: "-x", default: false

    def initialize(...)
      super

      if options[:debug]
        Source2MD.logger.level = :debug
        Source2MD.debug = true
      end

      Source2MD.xmp_out_exclude = options[:xmp_out_exclude]

      tp Source2MD.config
    end

    map "g" => :generate
    desc "generate [files]", "Markdown generation"
    option :output_file, type: :string, aliases: "-o", default: "output.md"
    def generate(*files)
      Generator.new(options.to_options.merge(files: files)).call
    end
  end
end

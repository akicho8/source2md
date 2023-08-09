module Source2MD
  class Cli < Thor
    class_option :debug,           type: :boolean, aliases: "-d", default: false
    class_option :xmp_out_exclude, type: :boolean, aliases: "-x", default: false
    class_option :readonly,        type: :boolean, default: true

    def initialize(...)
      super

      if options[:debug]
        Source2MD.logger.level = :debug
        Source2MD.debug = true
      end

      Source2MD.xmp_out_exclude = options[:xmp_out_exclude]
      Source2MD.readonly = options[:readonly]

      tp Source2MD.config
    end

    # default_command :generate

    map "g" => :generate
    desc "generate [files]", "Markdown generation"
    option :output_file, type: :string, aliases: "-o", default: nil
    def generate(*files)
      Generator.new(options.to_options.merge(files: files)).call
    end
  end
end

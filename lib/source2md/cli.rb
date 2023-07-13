module Source2MD
  class Cli < Thor
    class_option :debug, type: :boolean
    class_option :quiet, type: :boolean

    desc "generate [files]", "生成"
    option :output_file, type: :string, aliases: "-o", default: "output.md"
    def generate(*files)
      Generator.new(options.to_options.merge(files: files)).call
    end
  end
end

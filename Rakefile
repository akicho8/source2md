require "bundler/gem_tasks"

Pathname.glob("lib/source2md/tasks/**/*.rake").each { |file| load(file) }

task :g => "doc:generate"
task :r => "doc:renum"
task :o => "open"

namespace :doc do
  desc "[g] generate README.md"
  task "generate" do
    Rake::Task["doc:renum"].execute
    system "sh", "-vec", <<~EOT, exception: true
.bin/source2md generate --no-debug --xmp-out-exclude --prefix_re '^' -o README.md doc/0*
EOT
  end

  desc "renumber"
  task :renum do
    system "sh", "-vec", <<~EOT, exception: true
saferenum -x doc
EOT
  end
end

task :open do
  system "sh", "-vec", <<~EOT, exception: true
open https://github.com/akicho8/source2md
EOT
end

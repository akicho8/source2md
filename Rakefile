require "bundler/gem_tasks"

Pathname.glob("lib/source2md/tasks/**/*.rake").each { |file| load(file) }

task :g => "doc:generate"
task :r => "doc:renum"
task :o => "open"

namespace :doc do
  desc "[g] generate README.md"
  task "generate" do
    system "sh", "-vec", <<~EOT, exception: true
.bin/source2md generate --no-debug --no-xmp-out-exclude -o README.md doc/0*
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

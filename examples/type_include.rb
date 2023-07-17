require "./setup"

puts Source2MD::Element.new(<<~EOS).to_md

#+include: input.yml
#+name:

EOS
# ~> /Users/ikeda/src/source2md/lib/source2md/part/type_include.rb:27:in `read': No such file or directory @ rb_sysopen - /Users/ikeda/src/source2md/examples/input.yml diff xxx:yyy (Errno::ENOENT)
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/part/type_include.rb:27:in `read'
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/part/type_include.rb:27:in `body'
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/part/type_include.rb:17:in `to_md'
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/part/base.rb:25:in `block in initialize'
# ~> 	from /opt/rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/activesupport-7.0.6/lib/active_support/logger_thread_safe_level.rb:58:in `add'
# ~> 	from /opt/rbenv/versions/3.2.2/lib/ruby/3.2.0/logger.rb:689:in `debug'
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/part/base.rb:13:in `initialize'
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/part/type_include.rb:9:in `initialize'
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/element.rb:27:in `new'
# ~> 	from /Users/ikeda/src/source2md/lib/source2md/element.rb:27:in `to_md'
# ~> 	from -:3:in `<main>'

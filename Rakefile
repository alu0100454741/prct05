desc "Ejecuta los Test"
task :test do
	sh "ruby ./tc_racional.rb"
end

desc "build HTML from README.md"
task :html do
  sh "kramdown README.md  > README.html"
end

desc "install gems"
task :install do
  sh "bundle install"
end
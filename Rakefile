require "time"

namespace :league do
  task :runtest, [:browser] do |task, args|
    ENV['BROWSER'] = args[:browser]

    time = Time.now.utc.iso8601.tr(":", "")
    report = "--format html --out=log/report_#{time}.html"
    command = "rspec #{report} --backtrace"
    puts command
    sh command

    #Rake::Task['mcfadyen:work'].invoke(args[:browser])
  end

  task :runtag, [:tags, :browser] do |task, args|
    ENV['BROWSER'] = args[:browser]

    time = Time.now.utc.iso8601.tr(":", "")
    report = "--format html --out=log/report_#{time}.html"
    command = "rspec --tag #{args[:tags]} #{report} --backtrace"
    puts command
    sh command
  end
end

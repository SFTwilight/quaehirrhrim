#! /usr/bin/env ruby
require 'csv'

def validate_csv(f)
  rows, cols = 0, nil
  begin
    CSV.foreach(f, col_sep: ", ", encoding: 'UTF-8') do |row|
      rows += 1
      cols ||= row.length
      if row.length != cols
        puts "#{f}:#{rows}: #{row.length} cols, should be #{cols}"
      end
    end
  rescue CSV::MalformedCSVError => e
    puts "#{f}:#{e.lineno}: #{e.message}"
  rescue => e
    puts "#{f}: #{e.message}"
  end
end

if __FILE__==$0
  if ARGV.length > 0
    ARGV.each { |f| validate_csv(f) }
    validate_csv(ARGV[0])
  else
    puts "Usage: #{__FILE__} a.csv [b.csv...]"
  end
end

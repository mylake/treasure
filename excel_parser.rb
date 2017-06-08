require 'pry'
require 'rubyXL'

workbook = RubyXL::Parser.parse("yourfile")
worksheet = workbook[0]


worksheet.each do |row|
  row && row.cells.each do |cell|
    val = cell && cell.value
    puts val
  end
end

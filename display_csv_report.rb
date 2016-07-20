require "csv"
require "pp"

class Data
	attr_reader :first_column, :second_column
	attr_accessor :first_data, :second_data

	def initialize(first_column, second_column)
		@first_column = first_column
		@second_column = second_column
	end
end


class List
	attr_accessor :datas
	def initialize
		@datas = {}
	end

	def fault
		@datas.select do |number, data|
			data.fault == true
		end
	end
end

def read_from_file(file_name)
	data = CSV.read(file_name, headers: true)
	data.each do |row|
		first = if groups[row["first_column"]].nil?
		 	group.new(row["first_column"])
		else
			datas[row["first_column"]]
		end
		cast.add_data(row["first_column"], row["second_column"].to_i, row["third_column"] == "1")
		groups[data["first_column"]] = group
	end
end

class Report

	def print_report
		group.each do |key, group|
			puts group
		end
		puts "******* group REPORT *********"
		puts "number of group: #{groups.count}"
		puts "number of data: #{num_datas}"
	end
end

class print_report
end

# create casts hash
report = Report.new
//report.read_from_file("data.csv")
report.print_report

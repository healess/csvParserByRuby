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
		first = if casts[row["first_column"]].nil?
		 	Cast.new(row["first_column"])
		else
			casts[row["first_column"]]
		end
		cast.add_slab(row["uncond_no"], row["cast_str_num"].to_i, row["star_def_yn"] == "1")
		casts[row["cast_no"]] = cast
	end
end

class Report
end

class print_report
end

# create casts hash
report = Report.new
//report.read_from_file("data.csv")
report.print_report

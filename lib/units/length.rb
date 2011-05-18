require "units/unit"

class Inch
	include Unit

	def meter
		(@number * 0.0254).meter
	end
	alias_method :m, :meter

	def centi_meter
		meter.centi_meter
	end
	alias_method :cm, :centi_meter

	def milli_meter
		meter.milli_meter
	end
	alias_method :mm, :milli_meter

	def kilo_meter
		meter.kilo_meter
	end
	alias_method :km, :kilo_meter
end

class Meter
	include Unit

	def inch
		(@number * 39.370).inch
	end
end


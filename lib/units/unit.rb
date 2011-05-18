module Unit
	def self.included(klass)
		Numeric.send(:define_method, klass.to_s.downcase) { klass.new(self) }
	end

	def initialize(number)
		@number = number
	end

	def unit
		self.class.to_s.downcase
	end

	def inspect
		[@number, unit].join(" ")
	end

	def to_s
		inspect
	end

	def to_i
		@number
	end
	alias_method :to_int, :to_i
end


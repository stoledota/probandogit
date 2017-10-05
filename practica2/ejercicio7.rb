#monkeypatch
class TrueClass

	def opposite
		false
	end
end

class FalseClass; def opposite; !self; end; end

#creo un modulo
module Opposite; def opposite; !self; end; end

#lo incluyo en la clase
class TrueClass; include Opposite; end
class FalseClass; include Opposite; end

[TrueClass, FalseClass].each {|c| c.include Opposite;}


class Memory
	@@memory = {}

	# => Clear Memory
	# TODO: Implementar completamente a limpeza da memória
	def clear
		for i in 0...@@memory.length
			@@memory[i] = ""
		end
	end
	# => Create Memory (Hex decimal)
	# Address (hex) | 32 Bits Instruction
	def hexMemory
		for i in 0...10240
			@@memory.store("0x"+i.to_s(16),"")
		end
		puts @@memory
	end
	# => Create Memory (Decimal)
	# Address (decimal) | 32 Bits Instruction
	def decMemory
		for i in 0...10240
			if(i<10)
				@@memory.store("00000"+i.to_s,"")
			elsif(100 > i && i >= 10)
				@@memory.store("0000"+i.to_s,"")
			elsif(1000 > i && i >= 100)
				@@memory.store("000"+i.to_s,"")
			elsif(10000 > i && i >= 1000)
				@@memory.store("00"+i.to_s,"")
			elsif(100000 > i && i >= 10000)
				@@memory.store("0"+i.to_s,"")
			else
				@@memory.store(""+i.to_s,"")
			end
		end
		puts @@memory
	end
end
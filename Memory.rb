class Memory
	@@memory = {}

	# => Clear Memory
	# TODO: Implementar completamente a limpeza da memória
	def clear
		for i in 0...@@memory.length
			@@memory[i] = ""
		end
	end

	# => Create Memory
	# Address | 32 Bits Instruction
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
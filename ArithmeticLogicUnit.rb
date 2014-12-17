class ArithmeticLogicUnit
	#=================================
	# Get an binary value (unsigned)
	# and resize it to a maxValue
	def resizeBinary(binary,maxValue)
		while(binary.length < maxValue)
			binary = "0"+binary
		end
		binary
	end
	#=========================
	# How to use
	# 	@ex.: and $s1,$s2,$S3
	# => s1 = s2 && s3
	def andLogic(reg1,reg2)
		reg1Resize = resizeBinary(reg1.to_s(2),32)
		reg2Resize = resizeBinary(reg2.to_s(2),32)
		for i in 0...reg1Resize.length
			if (reg1Resize[i] == "0") && (reg2Resize[i] == "0")
				andLogic = andLogic.to_s+"0"
			else
				andLogic = andLogic.to_s+"1"
			end
		end
		andLogic
	end
	#=========================
	# How to use
	# 	@ex.: add $s1,$s2,$S3
	# => s1 = s2 + s3
	def add(reg1,reg2) reg1+reg2 end
	#=========================
	# How to use
	# 	@ex.: addu $s1,$s2,$s3
	# => s1 = s2 + s3
	def addu(reg1,reg2) reg1+reg2 end
	#=========================
	# How to use
	# 	@ex.: addi $s1,$s2,C
	# => s1 = s2 + C
	def addi(reg1,const) reg1+const end
	#=========================
	# How to use
	# 	@ex.: addiu $s1,$s2,C
	# => s1 = s2 + C
	def addiu(reg1,const) reg1+const end
	#=========================
	# How to use
	# 	@ex.: sub $s1,$s2,$S3
	# => s1 = s2-s3
	def sub(reg1,reg2) reg1-reg2 end
	#=========================
	# How to use
	# 	@ex.: subu $s1,$s2,$S3
	# => s1 = s2-s3
	def subu(reg1,reg2) reg1-reg2 end
	#=========================
	# How to use
	# 	@ex.: mult $s1,$s2,$s3
	# => s1 = s2 * s3
	def mult(reg1,reg2) reg1*reg2 end
	#=========================
	# How to use
	# 	@ex.: div $s1,$s2,$s3
	# => s1 = s2 / s3
	def div(reg1,reg2) reg1/reg2 end
	#=========================
	# How to use
	# 	@ex.: slt $s1,$s2,$S3
	# => if(s2 < s3) s1 = 1 else s1 = 0
	def slt(reg1,reg2)
		if reg1 < reg2
			1
		else
			0
		end
	end
	#=========================
	# How to use
	# 	@ex.: slti $s1,$s2,C
	# => if(s2 < C) s1 = 1 else s1 = 0
	def slti(reg1,const)
		if reg1 < const
			1
		else
			0
		end
	end
	#=========================
	# How to use
	# 	@ex.: beq $s1,$s2,label
	# => if(s1 == s2) goto label
	# TODO: Implementar BEQ
	def beq(reg1,reg2)
	end
	#=========================
	# How to use
	# 	@ex.: bne $s1,$s2,label
	# => if(s1 != s2) goto label]
	# TODO: Implementar BNE
	def bne(reg1,reg2)
	end
end

ula = ArithmeticLogicUnit.new
#puts "add: "+ula.add(10,10).to_s+" | Binary Result (32 bits): "+ula.resizeBinary(ula.add(10,10).to_s(2),32)
puts ula.andLogic(10,10)
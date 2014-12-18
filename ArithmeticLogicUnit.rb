class ArithmeticLogicUnit
	#=================================
	# => resizeBinary()
	# Get an binary value (unsigned)
	# and resize it to a maxValue
	def resizeBinary(binary,maxValue)
		while(binary.length < maxValue)
			binary = "0"+binary
		end
		binary
	end
	#=================================
	# => invertBinary()
	# Get an binary value and invert
	# every bit, if char == 0, goes to 1
	# else char == 1, goes to 0
	def invertBinary(binary)
		for i in 0...binary.length
			if binary[i] == "0"
				invBinary = invBinary.to_s+"1"
			else
				invBinary = invBinary.to_s+"0"
			end
		end
		invBinary
	end
	#=========================
	# How to use
	# 	@ex.: and $s1,$s2,$S3
	# => s1 = s2 && s3
	def andLogic(reg1,reg2)
		for i in 0...reg1.to_s(2).length
			if (reg1.to_s(2)[i] == "0") && (reg2.to_s(2)[i] == "0")
				andLogic = andLogic.to_s+"0"
			else
				andLogic = andLogic.to_s+"1"
			end
		end
		andLogic
	end
	#=========================
	# How to use
	# 	@ex.: nand $s1,$s2,$S3
	# => s1 = !(s2 && s3)
	def nandLogic(reg1,reg2)
		invertBinary(andLogic(reg1,reg2))
	end
	#=========================
	# How to use
	# 	@ex.: or $s1,$s2,$S3
	# => s1 = s2 || s3
	def orLogic(reg1,reg2)
		for i in 0...reg1.to_s(2).length
			if (reg1.to_s(2)[i] == "1") && (reg2.to_s(2)[i] == "1")
				orLogic = orLogic.to_s+"1"
			else
				orLogic = orLogic.to_s+"0"
			end
		end
		orLogic
	end
	#=========================
	# How to use
	# 	@ex.: nor $s1,$s2,$S3
	# => s1 = !(s2 || s3)
	def norLogic(reg1,reg2)
		invertBinary(orLogic(reg1,reg2))
	end
	#=========================
	# How to use
	# 	@ex.: xor $s1,$s2,$S3
	# => s1 = s2 ^ s3
	def xorLogic(reg1,reg2)
		for i in 0...reg1.to_s(2).length
			if reg1.to_s(2)[i] == reg2.to_s(2)[i]
				xorLogic = xorLogic.to_s+"1"
			else
				xorLogic = xorLogic.to_s+"0"
			end
		end
		xorLogic
	end
	#=========================
	# How to use
	# 	@ex.: xnor $s1,$s2,$S3
	# => s1 = !(s2 ^ s3)
	def xnorLogic(reg1,reg2)
		invertBinary(xorLogic(reg1,reg2))
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
	# 	@ex.: sll $s1,$s2,C
	# => s1 = s2 * (2**C)
	# TODO: Implementar SLL
	def sll(reg1,const)
		reg1 * (2**const)
	end
	#=========================
	# How to use
	# 	@ex.: srl $s1,$s2,C
	# => s1 = s2 / (2**C)
	# TODO: Implementar SRL
	def srl(reg1,const)
		reg1 / (2**const)
	end
	#=========================
	# How to use
	# 	@ex.: beq $s1,$s2,label
	# => if(s1 == s2) goto label
	# TODO: Implementar BEQ
	def beq(reg1,reg2)
		if reg1 == reg2
			true
		else
			false
		end
	end
	#=========================
	# How to use
	# 	@ex.: bne $s1,$s2,label
	# => if(s1 != s2) goto label]
	# TODO: Implementar BNE
	def bne(reg1,reg2)
		if reg1 != reg2
			true
		else
			false
		end
	end
end

# Para testes
#ula = ArithmeticLogicUnit.new
#puts ula.beq(10,12)
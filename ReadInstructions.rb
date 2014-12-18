# Regex OPERADOR => \\b[a-zA-Z]{1,5}[ ]{1,9999}
# Regex REGISTRADOR => [$]\\w{1,4}
# Regex ENDEREÇO => \\b[,]{0,1}[ ]{0,999}\\d+\\b|\\b[,]{0,1}[ ]{0,999}[-]\\d+\\b	
# Regex LABEL => \\bj(|al)\\b[ ]{0,999}\\w+|\\b[,][ ]{0,999}\\w+\\b	
# Regex DEFINIR_LABEL => \\b\\w+[:]

print "Digite a instrução:"
line = gets.chomp.to_s
puts "OPERADOR: "+line.scan(/\b[a-zA-Z]{1,5}[ ]{1,9999}/).to_s
puts "REGISTRADOR: "+line.scan(/[$]\w{1,4}/).to_s
puts "ENDEREÇO: "+line.scan(/\b[,]{0,1}[ ]{0,999}\d+\b|\b[,]{0,1}[ ]{0,999}[-]\d+\b/).to_s
puts "LABEL: "+line.scan(/\bj(|al)\b[ ]{0,999}\w+|\b[,][ ]{0,999}\w+\b/).to_s
puts "DEFINIR_LABEL: "+line.scan(/\b\w+[:]/).to_s
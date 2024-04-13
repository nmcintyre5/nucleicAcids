# Adenine (A), Thymine (T), Cytosine (C), Guanine (G)
# DNA complementary base pairing rule
# A -> T
# C -> G
# G -> C
# T -> A

# RNA complementary base pairing rule
# A -> U
# C -> G
# G -> C
# T -> A

tempDNA <- character()           # Template DNA Sequence
revSequence <- character()      # Reverse DNA Sequence
compRNA <- character()           # Complementary RNA Sequence
revCompRNA <- character()      # Reverse-Complement RNA Sequence
curr_base <- character()

revDNA <- ""  
compDNA <- ""  
revCompDNA <- ""   
revRNA <- ''    
compRNA <- ''     
revCompRNA <- ''

#Change the tempDNA & tempRNA values to suit your needs here:
tempDNA <- "ATGCCGCTCAACTGACATXXTCAGATC"
cat("Temp DNA:\n", tempDNA, "\n\n")

tempRNA <- "AUGCCGCUAAUCUGACAUXXUCAGAUC" 
cat("Temp RNA:\n", tempRNA, "\n\n")

#=====Generate Reverse DNA ===========================================================
for (i in nchar(temp_DNA):1) {
  curr_base <- substr(temp_DNA, i, i)
  revDNA <- paste(revDNA, curr_base, sep = "")
}

cat("Reversed DNA:\n", revDNA, "\n\n")

#===== Generate Complementary DNA Sequence ============================================                  

for (i in 1:nchar(temp_DNA)) {
  curr_base <- substr(temp_DNA, i, i)
  if (curr_base == "A") {
    compDNA <- paste(compDNA, "T", sep = "")
  } else if (curr_base == "T") {
    compDNA <- paste(compDNA, "A", sep = "")
  } else if (curr_base == "C") {
    compDNA <- paste(compDNA, "G", sep = "")
  } else if (curr_base == "G") {
    compDNA <- paste(compDNA, "C", sep = "")
  } else {
    compDNA <- paste(compDNA, "?", sep = "")
    print(paste("Unknown base for Complementary DNA at: ", i)) 
  }
}
cat("Complementary DNA:\n", compDNA, "\n\n")

# Generate Reverse-Complement DNA Sequence ============================================         

for (i in nchar(temp_DNA):1) {
  curr_base <- substr(temp_DNA, i, i)
  if (curr_base == "A") {
    revCompDNA <- paste(revCompDNA, "T", sep = "")
  } else if (curr_base == "T") {
    revCompDNA <- paste(revCompDNA, "A", sep = "")
  } else if (curr_base == "C") {
    revCompDNA <- paste(revCompDNA, "G", sep = "")
  } else if (curr_base == "G") {
    revCompDNA <- paste(revCompDNA, "C", sep = "")
  } else {
    revCompDNA <- paste(revCompDNA, "?", sep = "")
    print(paste("Unknown base for Reversed Complementary DNA at: ", i)) 
  }
}
cat("Reversed Complementary DNA:\n", revCompDNA, "\n\n")

#===== Generate Reverse RNA Sequence ==================================================           

for(i in nchar(tempRNA):1){
  curr_base <- substr(tempRNA,i,i)
  revRNA <- paste(revRNA, curr_base, sep = "")
}

cat("Reversed RNA:\n", revRNA, "\n\n")


#===== Generate Complementary RNA Sequence ============================================
 
for(i in 1:nchar(tempDNA)){
  curr_base <- substr(tempDNA,i,i)
  if(curr_base == "A"){
    compRNA <- paste(compRNA, "U", sep = "")
  } else if(curr_base=="C"){
    compRNA <- paste(compRNA, "G", sep = "")
  } else if(curr_base == "G"){
    compRNA <- paste(compRNA, "C", sep = "")
  } else if(curr_base == "T"){
    compRNA <- paste(compRNA, "A", sep = "")
  } else{
    compRNA <- paste(compRNA, "?", sep = "")
    print(paste("Unknown base for Completmentary RNA at: ", i)) 
  }
}

cat("Completmentary RNA:\n", compRNA, "\n\n")

#===== Generate Reverse Complementary RNA Sequence ============================================
for (i in nchar(tempDNA):1) {
  curr_base <- substr(tempDNA, i, i)
  if (curr_base == "A") {
    revCompRNA <- paste(revCompRNA, "U", sep = "")
  } else if (curr_base == "C") {
    revCompRNA <- paste(revCompRNA, "G", sep = "")
  } else if (curr_base == "G") {
    revCompRNA <- paste(revCompRNA, "C", sep = "")
  } else if (curr_base == "T") {
    revCompRNA <- paste(revCompRNA, "A", sep = "")
  } else {
    revCompRNA <- paste(revCompRNA, "?", sep = "")
    print(paste("Unknown base for Reverse Complementary RNA at: ", i)) 
  }
}

cat("Reverse Complementary RNA:\n", revCompRNA, "\n\n")

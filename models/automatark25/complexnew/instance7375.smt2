(declare-const X String)
; (0[0-9]{7}|(AC|BR|FC|GE|GN|GS|IC|IP|LP|NA|NF|NI|NL|NO|NP|NR|NZ|OC|RC|SA|SC|SF|SI|SL|SO|SP|SR|SZ|ZC|R)[0-9]{6})
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (re.union (str.to.re "AC") (str.to.re "BR") (str.to.re "FC") (str.to.re "GE") (str.to.re "GN") (str.to.re "GS") (str.to.re "IC") (str.to.re "IP") (str.to.re "LP") (str.to.re "NA") (str.to.re "NF") (str.to.re "NI") (str.to.re "NL") (str.to.re "NO") (str.to.re "NP") (str.to.re "NR") (str.to.re "NZ") (str.to.re "OC") (str.to.re "RC") (str.to.re "SA") (str.to.re "SC") (str.to.re "SF") (str.to.re "SI") (str.to.re "SL") (str.to.re "SO") (str.to.re "SP") (str.to.re "SR") (str.to.re "SZ") (str.to.re "ZC") (str.to.re "R")) ((_ re.loop 6 6) (re.range "0" "9")))) (str.to.re "\x0a"))))
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (str.in.re X (re.++ (str.to.re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a"))))
(check-sat)

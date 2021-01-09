(declare-const X String)
; ^([a-zA-Z0-9]{1,15})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; Points\d+Host\x3a\dBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Basicwww.webcruiser.cc\x0a")))))
; ^([0-9]{8})|(R[0-9]{7})|((AC|FC|GE|GN|GS|IC|IP|LP|NA|NF|NI|NL|NO|NP|NR|NZ|OC|RC|SA|SC|SF|SI|SL|SO|SP|SR)[0-9]{6})$
(assert (str.in.re X (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to.re "R") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "AC") (str.to.re "FC") (str.to.re "GE") (str.to.re "GN") (str.to.re "GS") (str.to.re "IC") (str.to.re "IP") (str.to.re "LP") (str.to.re "NA") (str.to.re "NF") (str.to.re "NI") (str.to.re "NL") (str.to.re "NO") (str.to.re "NP") (str.to.re "NR") (str.to.re "NZ") (str.to.re "OC") (str.to.re "RC") (str.to.re "SA") (str.to.re "SC") (str.to.re "SF") (str.to.re "SI") (str.to.re "SL") (str.to.re "SO") (str.to.re "SP") (str.to.re "SR")) ((_ re.loop 6 6) (re.range "0" "9"))))))
; /^([a-z0-9])(([\-.]|[_]+)?([a-z0-9]+))*(@)([a-z0-9])((([-]+)?([a-z0-9]+))?)*((.[a-z]{2,3})?(.[a-z]{2,6}))$/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.opt (re.++ (re.opt (re.+ (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (str.to.re "/i\x0a") (re.opt (re.++ re.allchar ((_ re.loop 2 3) (re.range "a" "z")))) re.allchar ((_ re.loop 2 6) (re.range "a" "z")))))
(check-sat)

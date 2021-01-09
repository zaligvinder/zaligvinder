(declare-const X String)
; ppcdomain\x2Eco\x2Euk\d+Referer\x3A\w+PARSERHost\x3aA-311ServerUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ppcdomain.co.uk") (re.+ (re.range "0" "9")) (str.to.re "Referer:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSERHost:A-311ServerUser-Agent:\x0a")))))
(check-sat)

(declare-const X String)
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.+ (re.range "0" "9")) (str.to.re "sErverdist.atlas-ia.comUser-Agent:\x0a"))))
; /filename=[^\n]*\x2ermf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rmf/i\x0a")))))
(check-sat)

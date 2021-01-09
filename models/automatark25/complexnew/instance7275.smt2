(declare-const X String)
; /filename=[^\n]*\x2ef4a/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4a/i\x0a")))))
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.+ (re.range "0" "9")) (str.to.re "sErverdist.atlas-ia.comUser-Agent:\x0a")))))
; ^((0[1-9])|(1[0-2]))[\/\.\-]*((0[8-9])|(1[1-9]))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.* (re.union (str.to.re "/") (str.to.re ".") (str.to.re "-"))) (re.union (re.++ (str.to.re "0") (re.range "8" "9")) (re.++ (str.to.re "1") (re.range "1" "9"))) (str.to.re "\x0a"))))
; [0-9]+|-[0-9]+
(assert (not (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; gpstool\x2eglobaladserver\x2ecom\daction\x2ESearchdata2\.activshopper\.com
(assert (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.Searchdata2.activshopper.com\x0a"))))
(check-sat)

(declare-const X String)
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\/\d+\.\d+\.\d+\.\d+\//
(assert (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "//\x0a"))))
; ((([7-9])(\d{3})([-])(\d{4}))|(([7-9])(\d{7})))
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "7" "9") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "7" "9") ((_ re.loop 7 7) (re.range "0" "9")))) (str.to.re "\x0a"))))
; dl\x2Eweb-nexus\x2Enet\d+www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (not (str.in.re X (re.++ (str.to.re "dl.web-nexus.net") (re.+ (re.range "0" "9")) (str.to.re "www.onlinecasinoextra.comsqlads.grokads.com\x0a")))))
(check-sat)

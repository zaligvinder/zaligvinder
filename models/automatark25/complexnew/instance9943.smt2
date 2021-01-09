(declare-const X String)
; /filename=[^\n]*\x2epsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a"))))
; Toolbar\d+ServerLiteToolbardailywww\x2Ecameup\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "ServerLiteToolbardailywww.cameup.com\x13\x0a"))))
; ^(([0-1][0-9]|2[0-3])[0-5][0-9]\-([0-1][0-9]|2[0-3])[0-5][0-9]|[C|c]losed)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9") (str.to.re "-") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (str.to.re "C") (str.to.re "|") (str.to.re "c")) (str.to.re "losed"))) (str.to.re "\x0a"))))
; /(USER|NICK)\x20BOSS\x2d[A-Z0-9\x5b\x5d\x2d]{15}/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "USER") (str.to.re "NICK")) (str.to.re " BOSS-") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "[") (str.to.re "]") (str.to.re "-"))) (str.to.re "/\x0a"))))
(check-sat)

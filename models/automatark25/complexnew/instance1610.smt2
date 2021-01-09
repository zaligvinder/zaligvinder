(declare-const X String)
; ^[A-CEGHJ-PR-TW-Z]{1}[A-CEGHJ-NPR-TW-Z]{1}[0-9]{6}[A-DFM]{0,1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "P") (re.range "R" "T") (re.range "W" "Z"))) ((_ re.loop 1 1) (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "W" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (re.range "A" "D") (str.to.re "F") (str.to.re "M"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ezip/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a"))))
; ^01[0-2]{1}[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "01") ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; Mirar_KeywordContent
(assert (not (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a"))))
; (([\w-]+://?|www[.])[^\s()<>]+)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ":/") (re.opt (str.to.re "/"))) (str.to.re "www.")) (re.+ (re.union (str.to.re "(") (str.to.re ")") (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
(check-sat)

(declare-const X String)
; ([0-9]|[0-9][0-9])\.\s
(assert (str.in.re X (re.++ (str.to.re ".") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a") (re.range "0" "9") (re.range "0" "9"))))
; ^L[a-zA-Z0-9]{26,33}$
(assert (not (str.in.re X (re.++ (str.to.re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^((\([2-9]\d{2}\)[ ]?)|([2-9]\d{2})[- ]?)\d{3}[- ]?\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "(") (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " "))) (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; horoscope2Cookie\x3adatATTENTION\x3AKontiki
(assert (str.in.re X (str.to.re "horoscope2Cookie:datATTENTION:Kontiki\x0a")))
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
(check-sat)

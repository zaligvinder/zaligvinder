(declare-const X String)
; .*-[0-9]{1,10}.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-") ((_ re.loop 1 10) (re.range "0" "9")) (re.* re.allchar) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ehhk/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hhk/i\x0a"))))
; ^([0-9]|[1-9]\d|[1-7]\d{2}|800)$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "800")) (str.to.re "\x0a")))))
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)

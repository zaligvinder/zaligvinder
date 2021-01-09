(declare-const X String)
; /\x2fb\x2fpkg\x2fT202[0-9a-z]{10}/U
(assert (str.in.re X (re.++ (str.to.re "//b/pkg/T202") ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/U\x0a"))))
; ^([0-9]|[1-9]\d|[1-7]\d{2}|800)$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "800")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2epor/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".por/i\x0a")))))
(check-sat)

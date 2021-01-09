(declare-const X String)
; /filename=[^\n]*\x2ebmp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bmp/i\x0a"))))
; ^([0-9]|0[0-9]|1[0-9]|2[0-3]):([0-9]|[0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.union (re.range "0" "9") (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eexe/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".exe/i\x0a")))))
; /\x2f[A-F0-9]{158}/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 158 158) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)

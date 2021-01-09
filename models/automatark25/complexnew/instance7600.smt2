(declare-const X String)
; /filename=[^\n]*\x2eclass/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".class/i\x0a")))))
; /\/[0-9A-F]{24}/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Ui\x0a"))))
; /^\/[a-f0-9]{8}\/[a-f0-9]{8}\/$/iU
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "//iU\x0a")))))
(check-sat)

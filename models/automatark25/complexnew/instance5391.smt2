(declare-const X String)
; /^\/\d{2,4}\.xap$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re ".xap/U\x0a")))))
; [A-Za-z]{1,2}[\d]{1,2}[A-Za-z]{0,1}
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a")))))
(check-sat)

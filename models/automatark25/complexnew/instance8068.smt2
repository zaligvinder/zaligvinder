(declare-const X String)
; /\/[a-z]{1,4}\x2ehtml\x3f0\x2e[0-9]{15,}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re ".html?0./U\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
; /filename=[^\n]*\x2edoc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".doc/i\x0a"))))
; (ES-?)?([0-9A-Z][0-9]{7}[A-Z])|([A-Z][0-9]{7}[0-9A-Z])
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.++ (str.to.re "ES") (re.opt (str.to.re "-")))) (re.union (re.range "0" "9") (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to.re "\x0a") (re.range "A" "Z") ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "0" "9") (re.range "A" "Z")))))))
(check-sat)

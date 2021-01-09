(declare-const X String)
; /filename=[^\n]*\x2exls/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xls/i\x0a"))))
; ^\d{3}\s?\d{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; \bfor\b.*[A-Za-z][<> ][\d]
(assert (str.in.re X (re.++ (str.to.re "for") (re.* re.allchar) (re.union (re.range "A" "Z") (re.range "a" "z")) (re.union (str.to.re "<") (str.to.re ">") (str.to.re " ")) (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)

(declare-const X String)
; /[a-z]=[a-f0-9]{98}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 98 98) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a")))))
; Toolbar.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* re.allchar) (str.to.re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a"))))
; /filename=[^\n]*\x2exm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xm/i\x0a"))))
; to\d+User-Agent\x3AFiltered
(assert (not (str.in.re X (re.++ (str.to.re "to") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:Filtered\x0a")))))
; Pass-On\w+c\.goclick\.comletter
(assert (str.in.re X (re.++ (str.to.re "Pass-On") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.comletter\x0a"))))
(check-sat)

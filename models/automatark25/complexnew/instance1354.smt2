(declare-const X String)
; Subject\x3A.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a")))))
; (\\.|[^"])*
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (re.comp (str.to.re "\x22")))) (str.to.re "\x0a"))))
(check-sat)

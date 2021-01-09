(declare-const X String)
; /^h=\d+&w=\d+&ua=/Psi
(assert (str.in.re X (re.++ (str.to.re "/h=") (re.+ (re.range "0" "9")) (str.to.re "&w=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Psi\x0a"))))
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "richfind.comdcww.dmcast.com\x0a")))
; /filename=[^\n]*\x2exslt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a"))))
(check-sat)

(declare-const X String)
; Pass-Onseqepagqfphv\x2fsfdcargo=dnsgpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (str.to.re "Pass-Onseqepagqfphv/sfdcargo=dnsgpstool.globaladserver.com\x0a"))))
; /^\/[A-Z]{6}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 6 6) (re.range "A" "Z")) (str.to.re "/U\x0a")))))
(check-sat)

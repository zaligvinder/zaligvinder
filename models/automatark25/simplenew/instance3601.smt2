(declare-const X String)
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "alert") (re.+ (re.range "0" "9")) (str.to.re "an") (re.* re.allchar) (str.to.re "Spyiz=e2give.comrichfind.com\x0a"))))
(check-sat)

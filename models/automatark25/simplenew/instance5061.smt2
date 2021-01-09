(declare-const X String)
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (str.in.re X (re.++ (str.to.re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY\x0a"))))
(check-sat)

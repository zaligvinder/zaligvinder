(declare-const X String)
; www\u{2E}dotcomtoolbar\u{2E}com\d+DesktopAddressIDENTIFY
(assert (str.in_re X (re.++ (str.to_re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to_re "DesktopAddressIDENTIFY\u{a}"))))
(check-sat)

(declare-const X String)
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to.re "tz")) (re.union (str.to.re "man") (str.to.re "berg")) (str.to.re "\x0a")))))
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (str.in.re X (re.++ (str.to.re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY\x0a"))))
; /\x2ef4p([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.f4p") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)

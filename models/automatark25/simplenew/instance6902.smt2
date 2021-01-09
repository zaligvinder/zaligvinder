(declare-const X String)
; spas\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=
(assert (not (str.in.re X (re.++ (str.to.re "spas") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=\x0a")))))
(check-sat)

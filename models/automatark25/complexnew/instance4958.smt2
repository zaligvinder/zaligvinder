(declare-const X String)
; Subject\x3AHost\x3aHost\x3A000Filelogin_ok\x5EMiniCommand
(assert (str.in.re X (str.to.re "Subject:Host:Host:000Filelogin_ok^MiniCommand\x0a")))
; ^(LV-)[0-9]{4}$
(assert (not (str.in.re X (re.++ (str.to.re "LV-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

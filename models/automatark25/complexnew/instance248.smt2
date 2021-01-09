(declare-const X String)
; [cC]{1}[0-9]{0,7}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "c") (str.to.re "C"))) ((_ re.loop 0 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (str.in.re X (re.++ (str.to.re "\x5cs\x5c") ((_ re.loop 2 2) (str.to.re "d")) (str.to.re "-\x5c") ((_ re.loop 3 3) (str.to.re "w")) (str.to.re "-\x5c") ((_ re.loop 4 4) (str.to.re "d")) (str.to.re "\x0a"))))
; activityHWAEHost\x3aMyWayServidor\x2EHANDYEmail
(assert (not (str.in.re X (str.to.re "activityHWAEHost:MyWayServidor.\x13HANDYEmail\x0a"))))
(check-sat)

(declare-const X String)
; activityHWAEHost\x3aMyWayServidor\x2EHANDYEmail
(assert (not (str.in.re X (str.to.re "activityHWAEHost:MyWayServidor.\x13HANDYEmail\x0a"))))
; engineResultUser-Agent\x3A
(assert (str.in.re X (str.to.re "engineResultUser-Agent:\x0a")))
; (\d+)?-?(\d+)-(\d+)
(assert (not (str.in.re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

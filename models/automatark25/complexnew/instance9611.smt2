(declare-const X String)
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2eabc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.abc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (str.in.re X (str.to.re "www.lookster.netnotification\x13uuid=qisezhin/iqor.ym\x13\x0a")))
(check-sat)

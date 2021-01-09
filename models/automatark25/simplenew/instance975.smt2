(declare-const X String)
; DmInf\x5E\x0D\x0A\x0D\x0AAttached\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "DmInf^\x0d\x0a\x0d\x0aAttached/bar_pl/chk.fcgi\x0a")))
(check-sat)

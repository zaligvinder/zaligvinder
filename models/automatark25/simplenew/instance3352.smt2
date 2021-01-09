(declare-const X String)
; node=Host\x3A\x3Fsearch\x3DversionContactNETObserve
(assert (not (str.in.re X (str.to.re "node=Host:?search=versionContactNETObserve\x0a"))))
(check-sat)

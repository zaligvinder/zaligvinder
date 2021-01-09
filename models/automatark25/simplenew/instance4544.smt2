(declare-const X String)
; iz=cyber@yahoo\x2EcomSpyBuddyCenterIP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "iz=cyber@yahoo.comSpyBuddyCenterIP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a")))
(check-sat)

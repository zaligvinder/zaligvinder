(declare-const X String)
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (str.in.re X (str.to.re "SpyBuddySubject:stats.drivecleaner.com\x13\x0a")))
(check-sat)

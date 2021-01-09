(declare-const X String)
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (not (str.in.re X (str.to.re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\x0a"))))
(check-sat)

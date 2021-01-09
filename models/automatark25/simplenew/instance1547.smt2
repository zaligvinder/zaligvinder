(declare-const X String)
; presentsearch\.netLocalHost\x3APORT\x3DWatchDogHost\x3A
(assert (str.in.re X (str.to.re "presentsearch.netLocalHost:PORT=WatchDogHost:\x0a")))
(check-sat)

(declare-const X String)
; /filename=[^\n]*\x2emid/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mid/i\x0a"))))
; presentsearch\.netLocalHost\x3APORT\x3DWatchDogHost\x3A
(assert (str.in.re X (str.to.re "presentsearch.netLocalHost:PORT=WatchDogHost:\x0a")))
(check-sat)

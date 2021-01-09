(declare-const X String)
; [A-Za-z]{5}
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; NetTracker\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3Aversion
(assert (not (str.in.re X (str.to.re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\x0a"))))
; /u=[\dA-Fa-f]{8}/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/u=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re "/smiU\x0a")))))
(check-sat)

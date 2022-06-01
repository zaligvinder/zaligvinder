(declare-const X String)
; [A-Za-z]{5}
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
; NetTracker\.htaServerTheef2trustyfiles\u{2E}comlogsHost\u{3A}version
(assert (not (str.in_re X (str.to_re "NetTracker.htaServerTheef2trustyfiles.comlogsHost:version\u{a}"))))
; /u=[\dA-Fa-f]{8}/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/u=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re "/smiU\u{a}")))))
(check-sat)

(declare-const X String)
; presentsearch\.netLocalHost\u{3A}PORT\u{3D}WatchDogHost\u{3A}
(assert (str.in_re X (str.to_re "presentsearch.netLocalHost:PORT=WatchDogHost:\u{a}")))
(check-sat)

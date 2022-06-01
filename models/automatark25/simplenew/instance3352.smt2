(declare-const X String)
; node=Host\u{3A}\u{3F}search\u{3D}versionContactNETObserve
(assert (not (str.in_re X (str.to_re "node=Host:?search=versionContactNETObserve\u{a}"))))
(check-sat)

(declare-const X String)
; User-Agent\u{3A}SpyPORT-ischeck=Component
(assert (not (str.in_re X (str.to_re "User-Agent:SpyPORT-ischeck=Component\u{a}"))))
(check-sat)

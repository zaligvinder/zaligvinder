(declare-const X String)
; nethttp\u{3A}\u{2F}\u{2F}supremetoolbarPORT\u{3D}
(assert (str.in_re X (str.to_re "nethttp://supremetoolbarPORT=\u{a}")))
; ^[^']*$
(assert (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "\u{a}"))))
(check-sat)

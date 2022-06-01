(declare-const X String)
; MyHost\u{3A}toHost\u{3A}WinSessionwww\u{2e}urlblaze\u{2e}netResultHost\u{3A}
(assert (not (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}"))))
(check-sat)

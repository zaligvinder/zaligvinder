(declare-const X String)
; MyHost\u{3A}toHost\u{3A}WinSessionwww\u{2e}urlblaze\u{2e}netResultHost\u{3A}
(assert (not (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}"))))
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (str.in_re X (re.++ (str.to_re "\u{a}6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9"))))))
(check-sat)

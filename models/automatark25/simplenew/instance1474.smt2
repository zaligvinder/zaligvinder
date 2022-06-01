(declare-const X String)
; 3AFrom\u{3A}dddrep\u{2E}dudu\u{2E}comform-data\u{3B}\u{20}name=\u{22}pid\u{22}
(assert (str.in_re X (str.to_re "3AFrom:dddrep.dudu.comform-data; name=\u{22}pid\u{22}\u{a}")))
(check-sat)

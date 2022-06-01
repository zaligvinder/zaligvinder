(declare-const X String)
; EItrustyfiles\u{2E}comnick_name=CIA-Test
(assert (not (str.in_re X (str.to_re "EItrustyfiles.comnick_name=CIA-Test\u{a}"))))
(check-sat)

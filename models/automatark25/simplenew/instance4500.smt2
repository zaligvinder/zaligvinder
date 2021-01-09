(declare-const X String)
; EItrustyfiles\x2Ecomnick_name=CIA-Test
(assert (not (str.in.re X (str.to.re "EItrustyfiles.comnick_name=CIA-Test\x0a"))))
(check-sat)

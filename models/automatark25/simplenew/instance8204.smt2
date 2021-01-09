(declare-const X String)
; toolbar_domain_redirectlibManager\x2Edll\x5Eget
(assert (not (str.in.re X (str.to.re "toolbar_domain_redirectlibManager.dll^get\x0a"))))
(check-sat)

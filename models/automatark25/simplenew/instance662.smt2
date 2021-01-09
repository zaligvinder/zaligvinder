(declare-const X String)
; TM_SEARCH3Host\x3aUser-Agent\x3Amedia\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (str.to.re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\x0a"))))
(check-sat)

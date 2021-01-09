(declare-const X String)
; HWAEUser-Agent\x3ATestHost\x3Awww\x2Edotcomtoolbar\x2Ecom
(assert (str.in.re X (str.to.re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\x0a")))
(check-sat)

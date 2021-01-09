(declare-const X String)
; HWAEUser-Agent\x3ATestHost\x3Awww\x2Edotcomtoolbar\x2Ecom
(assert (not (str.in.re X (str.to.re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\x0a"))))
; (\s{1,})
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)

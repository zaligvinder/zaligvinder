(declare-const X String)
; www\x2Eserverlogic3\x2Ecom\d+ToolBar.*Host\x3AHWAEUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.* re.allchar) (str.to.re "Host:HWAEUser-Agent:\x0a")))))
(check-sat)

(declare-const X String)
; nethttp\x3A\x2F\x2FsupremetoolbarPORT\x3D
(assert (str.in.re X (str.to.re "nethttp://supremetoolbarPORT=\x0a")))
; /(\x17\x00|\x00\x5C)\x00e\x00l\x00s\x00e\x00x\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x17\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00e\x00l\x00s\x00e\x00x\x00t\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a"))))
(check-sat)

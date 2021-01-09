(declare-const X String)
; (""|[^"])*
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x22\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x0a"))))
; /(\x19\x00|\x00\x5C)\x00s\x00p\x00f\x00r\x00a\x00m\x00e\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x19\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00s\x00p\x00f\x00r\x00a\x00m\x00e\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a"))))
(check-sat)

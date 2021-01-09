(declare-const X String)
; /(\x17\x00|\x00\x5C)\x00w\x00u\x00a\x00e\x00x\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x17\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00w\x00u\x00a\x00e\x00x\x00t\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a")))))
; /filename=[^\n]*\x2emaplet/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maplet/i\x0a")))))
(check-sat)

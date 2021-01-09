(declare-const X String)
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (str.in.re X (str.to.re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\x13\x0a")))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (str.in.re X (re.++ (str.to.re "/)\x0d\x0aHost: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0d\x0aCache-Control: no-cache\x0d\x0a\x0d\x0a/\x0a"))))
(check-sat)

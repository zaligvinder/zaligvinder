(declare-const X String)
; /filename=[^\n]*\x2ecrx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".crx/i\x0a")))))
; ^\+[0-9]{1,3}\([0-9]{3}\)[0-9]{7}$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Basic") (re.* re.allchar) (str.to.re "ProtoUser-Agent:\x0a"))))
; /^\/b\/(letr|req|opt|eve)\/[0-9a-fA-F]{24}$/U
(assert (str.in.re X (re.++ (str.to.re "//b/") (re.union (str.to.re "letr") (str.to.re "req") (str.to.re "opt") (str.to.re "eve")) (str.to.re "/") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "/U\x0a"))))
; \x3Clogs\x40dummyserver\x2Ecom\x3E
(assert (str.in.re X (str.to.re "<logs@dummyserver.com>\x0a")))
(check-sat)

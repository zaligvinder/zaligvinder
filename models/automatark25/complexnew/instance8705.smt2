(declare-const X String)
; <!*[^<>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (str.to.re "!")) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">\x0a")))))
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (str.in.re X (str.to.re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\x0a")))
(check-sat)

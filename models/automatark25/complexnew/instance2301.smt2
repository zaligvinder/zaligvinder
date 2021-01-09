(declare-const X String)
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (str.in.re X (str.to.re "versionIDENTIFYstarted.User-Agent:\x0a")))
; Subject\x3a\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "BossUser-Agent:SpediaUser-Agent:\x0a")))))
; ^\b\d{2,3}-*\d{7}\b$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.* (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

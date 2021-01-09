(declare-const X String)
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (str.to.re "Cookie:AppName/GRSI|Server|\x13Host:origin=sidefind\x0a")))
; Cookie\x3a\s+\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (re.++ (str.to.re "Cookie:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/GRSI|Server|\x13Host:origin=sidefind\x0a"))))
; User-Agent\x3A\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "BossUser-Agent:SpediaUser-Agent:\x0a"))))
(check-sat)

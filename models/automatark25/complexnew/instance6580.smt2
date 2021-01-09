(declare-const X String)
; protocolNetControl\x2EServerKEYLOGGERUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "protocolNetControl.Server\x13KEYLOGGERUser-Agent:\x0a"))))
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "YAHOO") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/cs/pop4/\x0a")))))
; SpyAgent\d+sErver\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.range "0" "9")) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (str.in.re X (re.++ (str.to.re "/agent_") (re.union (str.to.re "win") (str.to.re "lin") (str.to.re "mac")) (str.to.re "_helper.jar/siU\x0a"))))
(check-sat)

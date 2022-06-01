(declare-const X String)
; protocolNetControl\u{2E}ServerKEYLOGGERUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "protocolNetControl.Server\u{13}KEYLOGGERUser-Agent:\u{a}"))))
; YAHOO.*Host\u{3A}.*\u{2F}cs\u{2F}pop4\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "YAHOO") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/cs/pop4/\u{a}")))))
; SpyAgent\d+sErver\s+User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "SpyAgent") (re.+ (re.range "0" "9")) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (str.in_re X (re.++ (str.to_re "/agent_") (re.union (str.to_re "win") (str.to_re "lin") (str.to_re "mac")) (str.to_re "_helper.jar/siU\u{a}"))))
(check-sat)

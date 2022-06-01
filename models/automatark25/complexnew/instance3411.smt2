(declare-const X String)
; com\dsearch\u{2e}conduit\u{2e}com\s+User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "com") (re.range "0" "9") (str.to_re "search.conduit.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; /\/docushare\/dsweb\/ResultBackgroundJobMultiple\/\d*[^\d]/U
(assert (not (str.in_re X (re.++ (str.to_re "//docushare/dsweb/ResultBackgroundJobMultiple/") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to_re "/U\u{a}")))))
; ^[a-z]
(assert (str.in_re X (re.++ (re.range "a" "z") (str.to_re "\u{a}"))))
; protocolNetControl\u{2E}ServerKEYLOGGERUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "protocolNetControl.Server\u{13}KEYLOGGERUser-Agent:\u{a}")))
(check-sat)

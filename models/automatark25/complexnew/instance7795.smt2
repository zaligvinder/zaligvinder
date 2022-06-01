(declare-const X String)
; Activityfilename=\u{22}StarLoggerDAWeb-Mail
(assert (str.in_re X (str.to_re "Activityfilename=\u{22}StarLoggerDAWeb-Mail\u{a}")))
; \u{7D}\u{7B}Port\u{3A}Host\u{3A}mqnqgijmng\u{2f}ojNavhelperUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}")))
; /\u{2e}manifest([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.manifest") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; www\u{2E}serverlogic3\u{2E}com
(assert (not (str.in_re X (str.to_re "www.serverlogic3.com\u{a}"))))
; (^\*\.[a-zA-Z][a-zA-Z][a-zA-Z]$)|(^\*\.\*$)
(assert (str.in_re X (re.union (re.++ (str.to_re "*.") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "*.*\u{a}"))))
(check-sat)

(declare-const X String)
; /\u{2e}bcl([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.bcl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; addrwww\u{2E}trustedsearch\u{2E}comX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "addrwww.trustedsearch.comX-Mailer:\u{13}\u{a}")))
; \u{22}StarLogger\u{22}\w+Host\u{3a}SoftwareHost\u{3A}jokeWEBCAM-
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}StarLogger\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:jokeWEBCAM-\u{a}")))))
(check-sat)

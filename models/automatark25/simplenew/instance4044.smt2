(declare-const X String)
; Host\u{3a}\dATTENTION\u{3A}[^\n\r]*From\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "ATTENTION:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "From:User-Agent:\u{a}")))))
(check-sat)

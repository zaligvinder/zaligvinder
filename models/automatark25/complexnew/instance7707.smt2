(declare-const X String)
; /^POST\u{20}\u{2f}[A-F\d]{42}\u{20}HTTP/
(assert (not (str.in_re X (re.++ (str.to_re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re " HTTP/\u{a}")))))
; Yeah\!User-Agent\u{3a}
(assert (str.in_re X (str.to_re "Yeah!User-Agent:\u{a}")))
; Googlelog\=\u{7B}IP\u{3A}PG=SPEEDBAR
(assert (str.in_re X (str.to_re "Googlelog={IP:PG=SPEEDBAR\u{a}")))
(check-sat)

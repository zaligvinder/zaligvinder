(declare-const X String)
; passcorrect\u{3B}\d+AcmeSubject\u{3A}ready\.\r\nby\u{2F}cbn\u{2F}node=
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.range "0" "9")) (str.to_re "AcmeSubject:ready.\u{d}\u{a}by/cbn/node=\u{a}"))))
; /\u{2e}mkv([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mkv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\&h=11$/U
(assert (str.in_re X (str.to_re "/&h=11/U\u{a}")))
(check-sat)

(declare-const X String)
; passcorrect\u{3B}\d+AcmeSubject\u{3A}ready\.\r\nby\u{2F}cbn\u{2F}node=
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.range "0" "9")) (str.to_re "AcmeSubject:ready.\u{d}\u{a}by/cbn/node=\u{a}"))))
(check-sat)

(declare-const X String)
; /^\/\?q=[^&]*##1$/U
(assert (str.in_re X (re.++ (str.to_re "//?q=") (re.* (re.comp (str.to_re "&"))) (str.to_re "##1/U\u{a}"))))
; /\u{2f}n\.php\?h=[a-zA-Z0-9]*?\&s=[a-zA-Z0-9]{1,5}$/Ui
(assert (str.in_re X (re.++ (str.to_re "//n.php?h=") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "&s=") ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/Ui\u{a}"))))
; thesearchresltLoggerHost\u{3A}BetaHWAEHost\u{3A}is
(assert (not (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}"))))
; passcorrect\u{3B}\d+AcmeSubject\u{3A}ready\.\r\nby\u{2F}cbn\u{2F}node=
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.range "0" "9")) (str.to_re "AcmeSubject:ready.\u{d}\u{a}by/cbn/node=\u{a}"))))
(check-sat)

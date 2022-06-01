(declare-const X String)
; /^\u{2f}[a-f0-9]{135}/Um
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 135 135) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Um\u{a}")))))
; www\u{2E}pcsentinelsoftware\u{2E}com
(assert (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}")))
; ([^a-zA-Z0-9])
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

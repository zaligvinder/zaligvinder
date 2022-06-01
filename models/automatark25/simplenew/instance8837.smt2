(declare-const X String)
; /^\u{2F}cap\u{2F}temp\u{2F}[A-Za-z0-9]+\u{2E}jpg/miU
(assert (str.in_re X (re.++ (str.to_re "//cap/temp/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jpg/miU\u{a}"))))
(check-sat)

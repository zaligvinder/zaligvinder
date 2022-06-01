(declare-const X String)
; Word\s+ExploiterSchwindler\u{2F}r\u{2F}keys\u{2F}keys
(assert (not (str.in_re X (re.++ (str.to_re "Word") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ExploiterSchwindler/r/keys/keys\u{a}")))))
; /^\u{2F}cap\u{2F}temp\u{2F}[A-Za-z0-9]+\u{2E}jpg/miU
(assert (not (str.in_re X (re.++ (str.to_re "//cap/temp/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jpg/miU\u{a}")))))
(check-sat)

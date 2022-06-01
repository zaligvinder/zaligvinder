(declare-const X String)
; HANDY\s+newsSoftActivitypassword\u{3B}1\u{3B}Optixtv\u{2E}180solutions\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "HANDY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "newsSoftActivity\u{13}password;1;Optixtv.180solutions.com\u{a}")))))
(check-sat)

(declare-const X String)
; EvilFTP\s+%3f[^\n\r]*\.bmpfilename\u{3D}\u{22}
(assert (str.in_re X (re.++ (str.to_re "EvilFTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "%3f") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re ".bmpfilename=\u{22}\u{a}"))))
; /\/jovf\.html$/U
(assert (not (str.in_re X (str.to_re "//jovf.html/U\u{a}"))))
; /\/[a-z0-9]{12}\.txt$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 12 12) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".txt/U\u{a}")))))
(check-sat)

(declare-const X String)
; <!--[\d\D]*?-->
(assert (str.in_re X (re.++ (str.to_re "<!--") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to_re "-->\u{a}"))))
; (\n\r)   replacement string---->\n
(assert (not (str.in_re X (str.to_re "\u{a}\u{d}   replacement string---->\u{a}\u{a}"))))
; Host\u{3A}\s+User-Agent\u{3A}\s+Host\u{3A}DesktopBlade
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:DesktopBlade\u{a}")))))
(check-sat)

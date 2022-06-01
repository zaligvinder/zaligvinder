(declare-const X String)
; /filename=[^\n]*\u{2e}xcf/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xcf/i\u{a}")))))
; awbeta\.net-nucleus\.com\d
(assert (not (str.in_re X (re.++ (str.to_re "awbeta.net-nucleus.com") (re.range "0" "9") (str.to_re "\u{a}")))))
; ([1-9]|[1-4][0-9]|5[0-2])
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "2"))) (str.to_re "\u{a}")))))
; ConnectionUser-Agent\u{3A}\swww\.fast-finder\.com
(assert (str.in_re X (re.++ (str.to_re "ConnectionUser-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}"))))
(check-sat)

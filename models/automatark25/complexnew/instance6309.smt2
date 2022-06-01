(declare-const X String)
; /\u{2f}[a-z0-9]+\.php\?php\u{3d}receipt$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".php?php=receipt/Ui\u{a}")))))
; User-Agent\u{3A}\s+User-Agent\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:User-Agent:\u{a}")))))
; /filename=[^\n]*\u{2e}flv/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flv/i\u{a}"))))
(check-sat)

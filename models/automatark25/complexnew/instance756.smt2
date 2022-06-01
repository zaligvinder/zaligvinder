(declare-const X String)
; /filename=[^\n]*\u{2e}k3g/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".k3g/i\u{a}"))))
; forum=.*Explorer\s+Host\u{3A}act=Host\u{3a}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "forum=") (re.* re.allchar) (str.to_re "Explorer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:act=Host:User-Agent:\u{a}")))))
; /^id\u{3d}[A-F\d]{32}(\u{26}info\u{3d}[A-F\d]{24})?$/P
(assert (not (str.in_re X (re.++ (str.to_re "/id=") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.opt (re.++ (str.to_re "&info=") ((_ re.loop 24 24) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to_re "/P\u{a}")))))
; /filename=[^\n]*\u{2e}quo/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".quo/i\u{a}"))))
(check-sat)

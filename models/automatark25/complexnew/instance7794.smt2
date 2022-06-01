(declare-const X String)
; SpywareStrike.*Subject\u{3A}\s+Pcast\u{2E}dat\u{2E}Toolbar
(assert (not (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}")))))
; /filename=[^\n]*\u{2e}mht/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mht/i\u{a}")))))
; /\u{2e}wpd([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wpd") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /listoverridecount([2345678]|[019][0-9])/i
(assert (str.in_re X (re.++ (str.to_re "/listoverridecount") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1") (str.to_re "9")) (re.range "0" "9")) (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8")) (str.to_re "/i\u{a}"))))
(check-sat)

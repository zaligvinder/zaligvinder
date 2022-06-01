(declare-const X String)
; 32e3432ew+
(assert (str.in_re X (re.++ (str.to_re "32e3432e") (re.+ (str.to_re "w")) (str.to_re "\u{a}"))))
; /gate\u{2e}php\u{3f}id=[a-z]{15}/U
(assert (not (str.in_re X (re.++ (str.to_re "/gate.php?id=") ((_ re.loop 15 15) (re.range "a" "z")) (str.to_re "/U\u{a}")))))
; error\*\-\*Wrong\s+www\u{2E}wordiq\u{2E}com\s+Subject\u{3A}AlexaOnline\u{25}21\u{25}21\u{25}21User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "error*-*Wrong") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21User-Agent:\u{a}")))))
; Desktop.*Hello\u{2E}.*Referer\u{3A}Toolbar
(assert (not (str.in_re X (re.++ (str.to_re "Desktop") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:Toolbar\u{a}")))))
(check-sat)

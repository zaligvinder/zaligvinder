(declare-const X String)
; /\u{2e}vwr([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.vwr") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 48 48) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; st=\s+Stopper\s+Host\u{3A}AgentProjectMyWebSearchSearchAssistant
(assert (str.in_re X (re.++ (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Stopper") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:AgentProjectMyWebSearchSearchAssistant\u{a}"))))
; /^\/load\.php\?spl=[^&]+&b=[^&]+&o=[^&]+&i=/U
(assert (str.in_re X (re.++ (str.to_re "//load.php?spl=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&b=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&o=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&i=/U\u{a}"))))
; ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "(")) (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (re.opt (str.to_re ")")))) (re.* (re.union (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re " ") (str.to_re "(") (str.to_re ")"))) (str.to_re "\u{a}"))))
(check-sat)

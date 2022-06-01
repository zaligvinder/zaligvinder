(declare-const X String)
; ^([1-9]|[1-9]\d|100)$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to_re "100")) (str.to_re "\u{a}")))))
; /^\/ABs[A-Za-z0-9]+$/U
(assert (str.in_re X (re.++ (str.to_re "//ABs") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
; SystemSleuth1\u{2E}0versionHost\u{3A}ArrowHost\u{3a}3Awebsearch\u{2E}drsnsrch\u{2E}comhostieiWonHost\u{3a}pjpoptwql\u{2f}rlnj
(assert (not (str.in_re X (str.to_re "SystemSleuth\u{13}1.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\u{13}hostieiWonHost:pjpoptwql/rlnj\u{a}"))))
; /filename=[^\n]*\u{2e}xbm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xbm/i\u{a}"))))
(check-sat)

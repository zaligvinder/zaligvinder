(declare-const X String)
; ^[^<>&~\s^%A-Za-z\\][^A-Za-z%^\\<>]{1,25}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "<") (str.to_re ">") (str.to_re "&") (str.to_re "~") (str.to_re "^") (str.to_re "%") (re.range "A" "Z") (re.range "a" "z") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 25) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to_re "%") (str.to_re "^") (str.to_re "\u{5c}") (str.to_re "<") (str.to_re ">"))) (str.to_re "\u{a}")))))
; ProjectMyWebSearchSearchAssistantfast-look\u{2E}comOneReporter
(assert (not (str.in_re X (str.to_re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\u{a}"))))
; /filename=[^\n]*\u{2e}f4v/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4v/i\u{a}")))))
; Host\u{3A}\d+Host\u{3A}.*communitytipHost\u{3A}GirafaClient
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "communitytipHost:GirafaClient\u{13}\u{a}"))))
(check-sat)

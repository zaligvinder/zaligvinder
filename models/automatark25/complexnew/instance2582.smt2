(declare-const X String)
; ^[^<>&~\s^%A-Za-z\\][^A-Za-z%^\\<>]{1,25}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "&") (str.to.re "~") (str.to.re "^") (str.to.re "%") (re.range "A" "Z") (re.range "a" "z") (str.to.re "\x5c") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 25) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "%") (str.to.re "^") (str.to.re "\x5c") (str.to.re "<") (str.to.re ">"))) (str.to.re "\x0a")))))
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (not (str.in.re X (str.to.re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\x0a"))))
; /filename=[^\n]*\x2ef4v/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4v/i\x0a")))))
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "communitytipHost:GirafaClient\x13\x0a"))))
(check-sat)

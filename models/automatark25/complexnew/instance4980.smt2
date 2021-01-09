(declare-const X String)
; /\x2evwr([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.vwr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to.re "/U\x0a"))))
; st=\s+Stopper\s+Host\x3AAgentProjectMyWebSearchSearchAssistant
(assert (str.in.re X (re.++ (str.to.re "st=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Stopper") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:AgentProjectMyWebSearchSearchAssistant\x0a"))))
; /^\/load\.php\?spl=[^&]+&b=[^&]+&o=[^&]+&i=/U
(assert (str.in.re X (re.++ (str.to.re "//load.php?spl=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&b=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&o=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&i=/U\x0a"))))
; ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.* (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re " ") (str.to.re "(") (str.to.re ")"))) (str.to.re "\x0a"))))
(check-sat)

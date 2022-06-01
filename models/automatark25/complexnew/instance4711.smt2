(declare-const X String)
; wowokay\d+FTP\s+Host\u{3A}Filtered\u{22}reaction\u{2E}txt\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "wowokay") (re.+ (re.range "0" "9")) (str.to_re "FTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Filtered\u{22}reaction.txt\u{22}\u{a}")))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9]?)?$
(assert (str.in_re X (re.++ (str.to_re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to_re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to_re "\u{a}"))))
; User-Agent\u{3A}\s+Robert
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Robert\u{a}"))))
; ^[^<>&~\s^%A-Za-z\\][^A-Za-z%^\\<>]{1,25}$
(assert (str.in_re X (re.++ (re.union (str.to_re "<") (str.to_re ">") (str.to_re "&") (str.to_re "~") (str.to_re "^") (str.to_re "%") (re.range "A" "Z") (re.range "a" "z") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 25) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to_re "%") (str.to_re "^") (str.to_re "\u{5c}") (str.to_re "<") (str.to_re ">"))) (str.to_re "\u{a}"))))
(check-sat)

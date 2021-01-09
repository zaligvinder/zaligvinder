(declare-const X String)
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a")))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9]?)?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+Robert
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Robert\x0a"))))
; ^[^<>&~\s^%A-Za-z\\][^A-Za-z%^\\<>]{1,25}$
(assert (str.in.re X (re.++ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "&") (str.to.re "~") (str.to.re "^") (str.to.re "%") (re.range "A" "Z") (re.range "a" "z") (str.to.re "\x5c") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 25) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "%") (str.to.re "^") (str.to.re "\x5c") (str.to.re "<") (str.to.re ">"))) (str.to.re "\x0a"))))
(check-sat)

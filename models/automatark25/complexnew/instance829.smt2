(declare-const X String)
; /\x2epfa([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pfa") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; User-Agent\x3A\s+Robert
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Robert\x0a")))))
; /^([A-Za-z]){1}([A-Za-z0-9-_.\:])+$/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re ".") (str.to.re ":"))) (str.to.re "/\x0a"))))
; configINTERNAL\.ini.*SecureNet\s+User-Agent\x3Aregister\.asp
(assert (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.* re.allchar) (str.to.re "SecureNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:register.asp\x0a"))))
; (private|public|protected)\s\w(.)*\((.)*\)[^;]
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re ")") (re.comp (str.to.re ";")) (str.to.re "\x0ap") (re.union (str.to.re "rivate") (str.to.re "ublic") (str.to.re "rotected"))))))
(check-sat)

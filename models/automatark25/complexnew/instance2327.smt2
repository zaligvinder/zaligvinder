(declare-const X String)
; TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2FX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\x13\x0a"))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "$") (str.to.re "%") (str.to.re "'") (str.to.re "-") (str.to.re "@") (str.to.re "{") (str.to.re "}") (str.to.re "~") (str.to.re "!") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "&") (str.to.re "^")) (str.to.re "\x0a")))))
; /^[a-zA-Z0-9]+$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/\x0a"))))
(check-sat)

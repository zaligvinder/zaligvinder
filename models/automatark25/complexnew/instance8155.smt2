(declare-const X String)
; ^[ .a-zA-Z0-9:-]{1,150}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 150) (re.union (str.to.re " ") (str.to.re ".") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ":") (str.to.re "-"))) (str.to.re "\x0a")))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "$") (str.to.re "%") (str.to.re "'") (str.to.re "-") (str.to.re "@") (str.to.re "{") (str.to.re "}") (str.to.re "~") (str.to.re "!") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "&") (str.to.re "^")) (str.to.re "\x0a"))))
(check-sat)

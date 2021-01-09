(declare-const X String)
; data\.warezclient\.comoakmanympnw\x2flnkd\.pkHost\x3AScaner
(assert (not (str.in.re X (str.to.re "data.warezclient.comoakmanympnw/lnkd.pkHost:Scaner\x0a"))))
; ^([a-zA-Z0-9]{6,18}?)$
(assert (not (str.in.re X (re.++ ((_ re.loop 6 18) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ['`~!@#&$%^&*()-_=+{}|?><,.:;{}\"\\/\\[\\]]
(assert (str.in.re X (re.++ (re.union (str.to.re "'") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "&") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "*") (str.to.re "(") (re.range ")" "_") (str.to.re "=") (str.to.re "+") (str.to.re "{") (str.to.re "}") (str.to.re "|") (str.to.re "?") (str.to.re ">") (str.to.re "<") (str.to.re ",") (str.to.re ".") (str.to.re ":") (str.to.re ";") (str.to.re "\x22") (str.to.re "\x5c") (str.to.re "/") (str.to.re "[")) (str.to.re "]\x0a"))))
(check-sat)

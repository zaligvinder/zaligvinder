(declare-const X String)
; ['`~!@#&$%^&*()-_=+{}|?><,.:;{}\"\\/\\[\\]]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "'") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "&") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "*") (str.to.re "(") (re.range ")" "_") (str.to.re "=") (str.to.re "+") (str.to.re "{") (str.to.re "}") (str.to.re "|") (str.to.re "?") (str.to.re ">") (str.to.re "<") (str.to.re ",") (str.to.re ".") (str.to.re ":") (str.to.re ";") (str.to.re "\x22") (str.to.re "\x5c") (str.to.re "/") (str.to.re "[")) (str.to.re "]\x0a")))))
(check-sat)

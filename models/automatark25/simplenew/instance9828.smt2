(declare-const X String)
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (str.to.re "\x22") (str.to.re " ") (str.to.re "'") (str.to.re "#") (str.to.re "*") (str.to.re "=") (str.to.re ",") (str.to.re ".") (str.to.re "\x5c") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "-") (str.to.re "$") (str.to.re "{") (str.to.re "}") (str.to.re "[") (str.to.re "]") (str.to.re "|") (str.to.re "?") (str.to.re "+") (str.to.re "^") (str.to.re "&") (str.to.re ":") (str.to.re "%") (str.to.re ";") (str.to.re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a"))))
(check-sat)

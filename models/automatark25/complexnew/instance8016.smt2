(declare-const X String)
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (not (str.in.re X (str.to.re "Fen\xeatreEye/dss/cc.2_0_0.TROJAN-\x0a"))))
; ^\d+\.\d\.\d[01]\d[0-3]\d\.[1-9]\d*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to.re ".") (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (str.to.re "\x22") (str.to.re " ") (str.to.re "'") (str.to.re "#") (str.to.re "*") (str.to.re "=") (str.to.re ",") (str.to.re ".") (str.to.re "\x5c") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "-") (str.to.re "$") (str.to.re "{") (str.to.re "}") (str.to.re "[") (str.to.re "]") (str.to.re "|") (str.to.re "?") (str.to.re "+") (str.to.re "^") (str.to.re "&") (str.to.re ":") (str.to.re "%") (str.to.re ";") (str.to.re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a"))))
(check-sat)

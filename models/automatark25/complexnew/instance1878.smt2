(declare-const X String)
; <[\w\"\ '\#\* \=\',\.\\\(\)\/\-\$\{\}\[\]\|\*\?\+\^\&\:\%\;\!]+>
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (str.to.re "\x22") (str.to.re " ") (str.to.re "'") (str.to.re "#") (str.to.re "*") (str.to.re "=") (str.to.re ",") (str.to.re ".") (str.to.re "\x5c") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "-") (str.to.re "$") (str.to.re "{") (str.to.re "}") (str.to.re "[") (str.to.re "]") (str.to.re "|") (str.to.re "?") (str.to.re "+") (str.to.re "^") (str.to.re "&") (str.to.re ":") (str.to.re "%") (str.to.re ";") (str.to.re "!") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a"))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3A\d+information
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.range "0" "9")) (str.to.re "information\x0a"))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a"))))
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&v=1./U\x0a")))))
(check-sat)

(declare-const X String)
; ^(((ht|f)tp(s?))\://).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s"))))))
; ^((CN=['\w\d\s\-\&]+,)+(OU=['\w\d\s\-\&]+,)*(DC=['\w\d\s\-\&]+[,]*){2,})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.++ (str.to.re "CN=") (re.+ (re.union (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ","))) (re.* (re.++ (str.to.re "OU=") (re.+ (re.union (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ","))) ((_ re.loop 2 2) (re.++ (str.to.re "DC=") (re.+ (re.union (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (str.to.re ",")))) (re.* (re.++ (str.to.re "DC=") (re.+ (re.union (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (str.to.re ",")))))))
; From\x3A.*Host\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (re.++ (str.to.re "From:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddy\x0a"))))
; /\x2f[A-F0-9]{158}/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 158 158) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; from\x3A\dwww\.thecommunicator\.net
(assert (str.in.re X (re.++ (str.to.re "from:") (re.range "0" "9") (str.to.re "www.thecommunicator.net\x0a"))))
(check-sat)

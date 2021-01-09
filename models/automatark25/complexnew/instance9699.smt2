(declare-const X String)
; ^\d*\.?\d*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3AUser-Agent\x3AHost\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Host:\x0a"))))
; ^(((ht|f)tp(s?))\://)?(www.|[a-zA-Z].)[a-zA-Z0-9\-\.]+\.(com|edu|gov|mil|net|org|biz|info|name|museum|us|ca|uk)(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\;\?\';\\\+&amp;%\$#\=~_\-]+))*$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (re.union (re.++ (str.to.re "www") re.allchar) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) re.allchar)) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") (re.union (str.to.re "com") (str.to.re "edu") (str.to.re "gov") (str.to.re "mil") (str.to.re "net") (str.to.re "org") (str.to.re "biz") (str.to.re "info") (str.to.re "name") (str.to.re "museum") (str.to.re "us") (str.to.re "ca") (str.to.re "uk")) (re.* (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re ",") (str.to.re ";") (str.to.re "?") (str.to.re "'") (str.to.re "\x5c") (str.to.re "+") (str.to.re "&") (str.to.re "a") (str.to.re "m") (str.to.re "p") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~") (str.to.re "_") (str.to.re "-"))))) (str.to.re "\x0a")))))
; ((^\d{5}$)|(^\d{8}$))|(^\d{5}-\d{3}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9"))))))
(check-sat)

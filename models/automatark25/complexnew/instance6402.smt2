(declare-const X String)
; ^(ht|f)tp(s?)\:\/\/(([a-zA-Z0-9\-\._]+(\.[a-zA-Z0-9\-\._]+)+)|localhost)(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&%\$#_]*)?([\d\w\.\/\%\+\-\=\&\?\:\\\"\'\,\|\~\;]*)$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")) (str.to.re "://") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "_"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "_")))))) (str.to.re "localhost")) (re.opt (str.to.re "/")) (re.opt (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "?") (str.to.re ",") (str.to.re "'") (str.to.re "/") (str.to.re "\x5c") (str.to.re "+") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "_")))) (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "/") (str.to.re "%") (str.to.re "+") (str.to.re "-") (str.to.re "=") (str.to.re "&") (str.to.re "?") (str.to.re ":") (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "'") (str.to.re ",") (str.to.re "|") (str.to.re "~") (str.to.re ";") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; ProSpywww\x2Eemp3finder\x2Ecomwww
(assert (str.in.re X (str.to.re "ProSpywww.emp3finder.comwww\x0a")))
; ([^\\"]|\\.)*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x0a")))))
; /\x2erp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; User-Agent\x3A\d+User-Agent\x3A\d+connectedNodes\/cgi-bin\/PopupV
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "connectedNodes/cgi-bin/PopupV\x0a")))))
(check-sat)

(declare-const X String)
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\x3awww\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "NetTracker") (re.* re.allchar) (str.to.re "Theef2") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "versionA-311Subject:www.pcsentinelsoftware.com\x0a"))))
; /\x2f[a-z-_]{90,}\x2e(html|php)$/U
(assert (not (str.in.re X (re.++ (str.to.re "//.") (re.union (str.to.re "html") (str.to.re "php")) (str.to.re "/U\x0a") ((_ re.loop 90 90) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_")))))))
; ^([a-zA-Z]+(.)?[\s]*)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt re.allchar) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; /(((ftp|http|https):\/\/)|(\w+:{0,1}\w*@))?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (re.union (str.to.re "ftp") (str.to.re "http") (str.to.re "https")) (str.to.re "://")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ":")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.union (str.to.re "#") (str.to.re "!") (str.to.re ":") (str.to.re ".") (str.to.re "?") (str.to.re "+") (str.to.re "=") (str.to.re "&") (str.to.re "%") (str.to.re "@") (str.to.re "-") (str.to.re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "/\x0a"))))
(check-sat)

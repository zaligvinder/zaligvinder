(declare-const X String)
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\u{3a}www\u{2E}pcsentinelsoftware\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "NetTracker") (re.* re.allchar) (str.to_re "Theef2") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "versionA-311Subject:www.pcsentinelsoftware.com\u{a}"))))
; /\u{2f}[a-z-_]{90,}\u{2e}(html|php)$/U
(assert (not (str.in_re X (re.++ (str.to_re "//.") (re.union (str.to_re "html") (str.to_re "php")) (str.to_re "/U\u{a}") ((_ re.loop 90 90) (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "_"))) (re.* (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "_")))))))
; ^([a-zA-Z]+(.)?[\s]*)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt re.allchar) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; /(((ftp|http|https):\/\/)|(\w+:{0,1}\w*@))?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
(assert (str.in_re X (re.++ (str.to_re "/") (re.opt (re.union (re.++ (re.union (str.to_re "ftp") (str.to_re "http") (str.to_re "https")) (str.to_re "://")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re ":")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "@")))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re "/") (re.union (str.to_re "#") (str.to_re "!") (str.to_re ":") (str.to_re ".") (str.to_re "?") (str.to_re "+") (str.to_re "=") (str.to_re "&") (str.to_re "%") (str.to_re "@") (str.to_re "-") (str.to_re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "/\u{a}"))))
(check-sat)

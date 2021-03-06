(declare-const X String)
; /filename=[^\n]*\x2eppsx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppsx/i\x0a"))))
; /(((ftp|http|https):\/\/)|(\w+:{0,1}\w*@))?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (re.union (str.to.re "ftp") (str.to.re "http") (str.to.re "https")) (str.to.re "://")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ":")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.union (str.to.re "#") (str.to.re "!") (str.to.re ":") (str.to.re ".") (str.to.re "?") (str.to.re "+") (str.to.re "=") (str.to.re "&") (str.to.re "%") (str.to.re "@") (str.to.re "-") (str.to.re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "/\x0a")))))
; /\/setup_b\.asp\?prj=\d\x26pid=[^\r\n]*\x26mac=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//setup_b.asp?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a")))))
(check-sat)

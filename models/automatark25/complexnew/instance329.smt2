(declare-const X String)
; ^[1-9][0-9]{1,6}\-[0-9]{2}\-[0-9]
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
; ^(\(?[0-9]{3}[\)-\.]?\ ?)?[0-9]{3}[-\.]?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.range ")" ".")) (re.opt (str.to.re " ")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (not (str.in.re X (str.to.re "www.maxifiles.comServidor.\x13\x0a"))))
; freeIPaddrsRunner\+The\+password\+is\x3A
(assert (not (str.in.re X (str.to.re "freeIPaddrsRunner+The+password+is:\x0a"))))
; /(((ftp|http|https):\/\/)|(\w+:{0,1}\w*@))?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (re.union (str.to.re "ftp") (str.to.re "http") (str.to.re "https")) (str.to.re "://")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ":")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.union (str.to.re "#") (str.to.re "!") (str.to.re ":") (str.to.re ".") (str.to.re "?") (str.to.re "+") (str.to.re "=") (str.to.re "&") (str.to.re "%") (str.to.re "@") (str.to.re "-") (str.to.re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "/\x0a"))))
(check-sat)

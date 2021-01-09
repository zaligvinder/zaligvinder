(declare-const X String)
; ^[\w\.=-]+@[\w\.-]+\.[\w]{2,3}$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "=") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /^(application|audio|example|image|message|model|multipart|text|video)\/[a-zA-Z0-9]+([+.-][a-zA-z0-9]+)*$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "application") (str.to.re "audio") (str.to.re "example") (str.to.re "image") (str.to.re "message") (str.to.re "model") (str.to.re "multipart") (str.to.re "text") (str.to.re "video")) (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re "+") (str.to.re ".") (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))))) (str.to.re "/\x0a")))))
; ^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$
(assert (str.in.re X (re.++ (re.* (str.to.re "0")) (re.opt (str.to.re "-")) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K")) (str.to.re "\x0a") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9")))))))
(check-sat)

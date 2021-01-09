(declare-const X String)
; ^\d{5}((\-|\s)?\d{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; Password="(\{.+\}[0-9a-zA-Z]+[=]*|[0-9a-zA-Z]+)"
(assert (not (str.in.re X (re.++ (str.to.re "Password=\x22") (re.union (re.++ (str.to.re "{") (re.+ re.allchar) (str.to.re "}") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (str.to.re "="))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x22\x0a")))))
; <(\/{0,1})img(.*?)(\/{0,1})\>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "img") (re.* re.allchar) (re.opt (str.to.re "/")) (str.to.re ">\x0a")))))
(check-sat)

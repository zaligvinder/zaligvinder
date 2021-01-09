(declare-const X String)
; ((www|http)(\W+\S+[^).,:;?\]\} \r\n$]+))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "www") (str.to.re "http")) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.+ (re.union (str.to.re ")") (str.to.re ".") (str.to.re ",") (str.to.re ":") (str.to.re ";") (str.to.re "?") (str.to.re "]") (str.to.re "}") (str.to.re " ") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "$"))))))
(check-sat)

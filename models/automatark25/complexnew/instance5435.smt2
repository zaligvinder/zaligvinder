(declare-const X String)
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "]") (str.to.re "\x22"))) (re.* (re.comp (str.to.re "["))) (str.to.re "[/url]\x0a[url") (re.opt (str.to.re "=")) (re.opt (str.to.re "\x22")) (re.opt (str.to.re "\x22")) (str.to.re "]")))))
; /^\/blog\/[a-zA-Z0-9]{3}\.(g(3|e)d|mm|vru|be|nut)$/U
(assert (not (str.in.re X (re.++ (str.to.re "//blog/") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") (re.union (re.++ (str.to.re "g") (re.union (str.to.re "3") (str.to.re "e")) (str.to.re "d")) (str.to.re "mm") (str.to.re "vru") (str.to.re "be") (str.to.re "nut")) (str.to.re "/U\x0a")))))
; is\x7D\x7BPort\x3A\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "is}{Port:}{User:\x0a")))
; ^\d{0,2}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)

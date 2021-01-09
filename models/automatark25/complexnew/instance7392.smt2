(declare-const X String)
; ^(\d{1,2})(\s?(H|h)?)(:([0-5]\d))?$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "H") (str.to.re "h"))))))
; HTTPwwwProbnymomspyo\x2fzowy
(assert (str.in.re X (str.to.re "HTTPwwwProbnymomspyo/zowy\x0a")))
; /^[0-9]+\.d{3}? *$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (str.to.re "d")) (re.* (str.to.re " ")) (str.to.re "/\x0a")))))
(check-sat)

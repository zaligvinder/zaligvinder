(declare-const X String)
; [:;]{1}[-~+o]?[(<\[]+
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re ":") (str.to.re ";"))) (re.opt (re.union (str.to.re "-") (str.to.re "~") (str.to.re "+") (str.to.re "o"))) (re.+ (re.union (str.to.re "(") (str.to.re "<") (str.to.re "["))) (str.to.re "\x0a")))))
; /mmpool[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in.re X (re.++ (str.to.re "/mmpool") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a")))))
(check-sat)

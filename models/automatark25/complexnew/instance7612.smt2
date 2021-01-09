(declare-const X String)
; /\/AES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (str.in.re X (re.++ (str.to.re "//AES") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a"))))
; [^!~/><\|/#%():;{}`_-]
(assert (str.in.re X (re.++ (re.union (str.to.re "!") (str.to.re "~") (str.to.re "/") (str.to.re ">") (str.to.re "<") (str.to.re "|") (str.to.re "#") (str.to.re "%") (str.to.re "(") (str.to.re ")") (str.to.re ":") (str.to.re ";") (str.to.re "{") (str.to.re "}") (str.to.re "`") (str.to.re "_") (str.to.re "-")) (str.to.re "\x0a"))))
; :(6553[0-5]|655[0-2][0-9]\d|65[0-4](\d){2}|6[0-4](\d){3}|[1-5](\d){4}|[1-9](\d){0,3})
(assert (not (str.in.re X (re.++ (str.to.re ":") (re.union (re.++ (str.to.re "6553") (re.range "0" "5")) (re.++ (str.to.re "655") (re.range "0" "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "65") (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "6") (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; \x2Fcs\x2Fpop4\x2FUser-Agent\x3Akitwww\x2Eborlander\x2Ecom\x2Ecn
(assert (str.in.re X (str.to.re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\x0a")))
; ^((8|\+38)-?)?(\(?044\)?)?-?\d{3}-?\d{2}-?\d{2}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "8") (str.to.re "+38")) (re.opt (str.to.re "-")))) (re.opt (re.++ (re.opt (str.to.re "(")) (str.to.re "044") (re.opt (str.to.re ")")))) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)

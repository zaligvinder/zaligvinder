(declare-const X String)
; ^([a-zA-Z]\:|\\)\\([^\\]+\\)*[^\/:*?"<>|]+\.htm(l)?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (str.to.re "\x5c") (re.* (re.++ (re.+ (re.comp (str.to.re "\x5c"))) (str.to.re "\x5c"))) (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re ".htm") (re.opt (str.to.re "l")) (str.to.re "\x0a"))))
; [-]?[1-9]\d{0,16}\.?\d{0,2}|[-]?[0]?\.[1-9]{1,2}|[-]?[0]?\.[0-9][1-9]
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "1" "9") ((_ re.loop 0 16) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") ((_ re.loop 1 2) (re.range "1" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") (re.range "0" "9") (re.range "1" "9") (str.to.re "\x0a")))))
(check-sat)

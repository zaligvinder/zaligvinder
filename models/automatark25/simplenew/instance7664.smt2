(declare-const X String)
; ^([a-zA-Z]\:|\\)\\([^\\]+\\)*[^\/:*?"<>|]+\.htm(l)?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (str.to.re "\x5c") (re.* (re.++ (re.+ (re.comp (str.to.re "\x5c"))) (str.to.re "\x5c"))) (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re ".htm") (re.opt (str.to.re "l")) (str.to.re "\x0a"))))
(check-sat)

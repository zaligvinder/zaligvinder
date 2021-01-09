(declare-const X String)
; /^(\d+\*)+(\d)+$/gm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.++ (re.+ (re.range "0" "9")) (str.to.re "*"))) (re.+ (re.range "0" "9")) (str.to.re "/gm\x0a")))))
; SecureNet.*\x2Fsearchfast\x2F
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.* re.allchar) (str.to.re "/searchfast/\x0a"))))
; ^[a-zA-Z]:(\\|(\\[^\\/\s:*"<>|]+)+)>
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.union (str.to.re "\x5c") (re.+ (re.++ (str.to.re "\x5c") (re.+ (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re ">\x0a"))))
(check-sat)

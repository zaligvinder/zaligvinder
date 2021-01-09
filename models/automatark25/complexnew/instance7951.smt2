(declare-const X String)
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a"))))
; ^\$?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(\.[0-9][0-9])?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; Password="(\{.+\}[0-9a-zA-Z]+[=]*|[0-9a-zA-Z]+)"
(assert (str.in.re X (re.++ (str.to.re "Password=\x22") (re.union (re.++ (str.to.re "{") (re.+ re.allchar) (str.to.re "}") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (str.to.re "="))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x22\x0a"))))
; /^User-Agent\x3A[^\r\n]*TT-Bot/mi
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "TT-Bot/mi\x0a")))))
(check-sat)

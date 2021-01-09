(declare-const X String)
; ^[a-zA-Z]([a-zA-Z[._][\d]])*[@][a-zA-Z[.][\d]]*[.][a-z[.][\d]]*
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".") (str.to.re "_")) (re.range "0" "9") (str.to.re "]"))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re ".") (re.union (re.range "a" "z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re "\x0a")))))
; ^100$|^\s*(\d{0,2})((\.|\,)(\d*))?\s*\%?\s*$
(assert (not (str.in.re X (re.union (str.to.re "100") (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) (re.* (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "%")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Desktop") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "IDENTIFY666User-Agent:[Static\x0a")))))
(check-sat)

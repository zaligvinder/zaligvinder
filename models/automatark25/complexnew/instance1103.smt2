(declare-const X String)
; ^(0{0,1}[1-9][0-9]){1}(\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}([0-9]{3}|[0-9]{4})(\-){0,1}(\s){0,1}[0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9") (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[\d]{5}[-\s]{1}[\d]{2}[-\s]{1}[\d]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; search\.dropspam\.com.*pjpoptwql\x2frlnj
(assert (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "pjpoptwql/rlnj\x0a"))))
(check-sat)

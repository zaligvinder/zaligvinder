(declare-const X String)
; ^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; update\.cgi\s+wwwProbnymomspyo\x2fzowy
(assert (str.in.re X (re.++ (str.to.re "update.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwProbnymomspyo/zowy\x0a"))))
; ^(([1-9]{1}\d{0,2},(\d{3},)*\d{3})|([1-9]{1}\d{0,}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)

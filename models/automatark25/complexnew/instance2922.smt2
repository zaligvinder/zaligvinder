(declare-const X String)
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (str.in.re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
; (\d{1,3},(\d{3},)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{3})?)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to.re "\x0a"))))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/&tv=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/smiU\x0a")))))
; Agent\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a"))))
(check-sat)

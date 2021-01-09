(declare-const X String)
; <[^>]+>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.+ (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; -i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (not (str.in.re X (str.to.re "-i%3fUser-Agent:www.proventactics.com\x0a"))))
; ^\$?([1-9][0-9]{3,}(\.\d{2})?|(\d{1,3}\,\d{3}|\d{1,3}\,\d{3}(\.\d{2})?)|(\d{1,3}\,\d{3}|\d{1,3}\,\d{3}\,\d{3}(\.\d{2})?)*)?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.opt (re.union (re.++ (re.range "1" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.* (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (str.to.re "\x0a"))))
(check-sat)

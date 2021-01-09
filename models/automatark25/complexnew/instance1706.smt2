(declare-const X String)
; ^(Sun|Mon|(T(ues|hurs))|Fri)(day|\.)?$|Wed(\.|nesday)?$|Sat(\.|urday)?$|T((ue?)|(hu?r?))\.?$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "Sun") (str.to.re "Mon") (re.++ (str.to.re "T") (re.union (str.to.re "ues") (str.to.re "hurs"))) (str.to.re "Fri")) (re.opt (re.union (str.to.re "day") (str.to.re ".")))) (re.++ (str.to.re "Wed") (re.opt (re.union (str.to.re ".") (str.to.re "nesday")))) (re.++ (str.to.re "Sat") (re.opt (re.union (str.to.re ".") (str.to.re "urday")))) (re.++ (str.to.re "T") (re.union (re.++ (str.to.re "u") (re.opt (str.to.re "e"))) (re.++ (str.to.re "h") (re.opt (str.to.re "u")) (re.opt (str.to.re "r")))) (re.opt (str.to.re ".")) (str.to.re "\x0a"))))))
; /\/java(rh|db)\.php$/U
(assert (not (str.in.re X (re.++ (str.to.re "//java") (re.union (str.to.re "rh") (str.to.re "db")) (str.to.re ".php/U\x0a")))))
(check-sat)

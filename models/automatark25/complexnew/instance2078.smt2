(declare-const X String)
; ^((\+)?(\d{2})[-])?(([\(])?((\d){3,5})([\)])?[-])|(\d{3,5})(\d{5,8}){1}?$
(assert (str.in.re X (re.union (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) (re.opt (str.to.re "(")) ((_ re.loop 3 5) (re.range "0" "9")) (re.opt (str.to.re ")")) (str.to.re "-")) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) ((_ re.loop 1 1) ((_ re.loop 5 8) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /Expression\x28\s*?GetClass\x28\x22sun.awt.SunToolkit\x22\x29\s*?,\s*?\x22getField\x22/smi
(assert (not (str.in.re X (re.++ (str.to.re "/Expression(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GetClass(\x22sun") re.allchar (str.to.re "awt") re.allchar (str.to.re "SunToolkit\x22)") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22getField\x22/smi\x0a")))))
; URLUBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "URLUBAgent%3fSchwindlerurl=Host:httpUser-Agent:\x0a"))))
(check-sat)

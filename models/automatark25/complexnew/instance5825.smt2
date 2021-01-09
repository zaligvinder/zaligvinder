(declare-const X String)
; ^(\$)?((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{2,})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
; subject\x3A.*Login\s+adfsgecoiwnf
(assert (not (str.in.re X (re.++ (str.to.re "subject:") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b\x0a")))))
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^\+?972(\-)?0?[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (str.to.re "972") (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; Bar\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecomc\.goclick\.com
(assert (str.in.re X (str.to.re "Bar/newsurfer4/client=BysooTBADdcww.dmcast.comc.goclick.com\x0a")))
(check-sat)

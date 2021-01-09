(declare-const X String)
; ^(\d|\d{1,9}|1\d{1,9}|20\d{8}|213\d{7}|2146\d{6}|21473\d{5}|214747\d{4}|2147482\d{3}|21474835\d{2}|214748364[0-7])$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") ((_ re.loop 1 9) (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 1 9) (re.range "0" "9"))) (re.++ (str.to.re "20") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to.re "213") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "2146") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to.re "21473") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to.re "214747") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "2147482") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "21474835") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "214748364") (re.range "0" "7"))) (str.to.re "\x0a")))))
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (str.in.re X (re.++ (str.to.re "Runner") (re.* re.allchar) (str.to.re ".html") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "NetControl.Server\x13") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAH\x0a"))))
; ((\+351|00351|351)?)(2\d{1}|(9(3|6|2|1)))\d{7}
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+351") (str.to.re "00351") (str.to.re "351"))) (re.union (re.++ (str.to.re "2") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "9") (re.union (str.to.re "3") (str.to.re "6") (str.to.re "2") (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

(declare-const X String)
; xmlHost\x3ADAPCURLBlazeActivity
(assert (not (str.in.re X (str.to.re "xmlHost:DAPCURLBlazeActivity\x0a"))))
; ^[\w-]+(\.[\w-]+)*@([a-z0-9-]+(\.[a-z0-9-]+)*?\.[a-z]{2,6}|(\d{1,3}\.){3}\d{1,3})(:\d{4})?$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "@") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))))) (str.to.re ".") ((_ re.loop 2 6) (re.range "a" "z"))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (str.to.re "TSA/S:Users\x5chttp://tv.seekmo.com/showme.aspx?keyword=\x0a")))
; ^(\d{2,3}|\(\d{2,3}\))[ ]?\d{3,4}[-]?\d{3,4}$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 3) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; (^[0][2][1579]{1})(\d{6,7}$)
(assert (not (str.in.re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a02") ((_ re.loop 1 1) (re.union (str.to.re "1") (str.to.re "5") (str.to.re "7") (str.to.re "9")))))))
(check-sat)

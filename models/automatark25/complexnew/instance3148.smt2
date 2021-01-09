(declare-const X String)
; /filename=\x22\d+\x22\r\n/P
(assert (str.in.re X (re.++ (str.to.re "/filename=\x22") (re.+ (re.range "0" "9")) (str.to.re "\x22\x0d\x0a/P\x0a"))))
; ^([A-Z]{0,3})?[ ]?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 0 3) (re.range "A" "Z"))) (re.opt (str.to.re " ")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ re.allchar (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)

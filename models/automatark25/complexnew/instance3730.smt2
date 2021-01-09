(declare-const X String)
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to.re "\x0a")))))
; /\d+&/miR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "&/miR\x0a")))))
; TM_SEARCH3Host\x3aUser-Agent\x3Amedia\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (str.to.re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\x0a"))))
; url=\"([^\[\]\"]*)\"
(assert (str.in.re X (re.++ (str.to.re "url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
; \x2Fsearchfast\x2FNavhelper
(assert (not (str.in.re X (str.to.re "/searchfast/Navhelper\x0a"))))
(check-sat)

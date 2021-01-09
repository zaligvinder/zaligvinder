(declare-const X String)
; \x2Fsearchfast\x2Fhoroscope2libManager\x2Edll\x5EgetFreeAccessBarHost\x3Ahostiedesksearch\.dropspam\.com
(assert (str.in.re X (str.to.re "/searchfast/horoscope2libManager.dll^getFreeAccessBarHost:hostiedesksearch.dropspam.com\x0a")))
; /^(8-?|\+?7-?)?(\(?\d{3}\)?)-?(\d-?){6}\d$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (str.to.re "8") (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "+")) (str.to.re "7") (re.opt (str.to.re "-"))))) (re.opt (str.to.re "-")) ((_ re.loop 6 6) (re.++ (re.range "0" "9") (re.opt (str.to.re "-")))) (re.range "0" "9") (str.to.re "/\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")))))
; /^Content-Type\x3a[\x20\x09]+application\/octet-stream/smiH
(assert (str.in.re X (re.++ (str.to.re "/Content-Type:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "application/octet-stream/smiH\x0a"))))
(check-sat)

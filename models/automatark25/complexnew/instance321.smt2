(declare-const X String)
; ^\+?972(\-)?0?[23489]{1}(\-)?[^0\D]{1}\d{6}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (str.to.re "972") (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; Subject\x3a\d+rprpgbnrppb\x2fci
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci\x0a")))))
; /\?a=dw[a-z]$/U
(assert (not (str.in.re X (re.++ (str.to.re "/?a=dw") (re.range "a" "z") (str.to.re "/U\x0a")))))
; HWAEUser-Agent\x3ATestHost\x3Awww\x2Edotcomtoolbar\x2Ecom
(assert (str.in.re X (str.to.re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\x0a")))
; /(^|&)(db(username|password|)|cp(username|password|domain))=[^&]*?(\x27|%27)[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pmi
(assert (not (str.in.re X (re.++ (str.to.re "/&") (re.union (re.++ (str.to.re "db") (re.union (str.to.re "username") (str.to.re "password"))) (re.++ (str.to.re "cp") (re.union (str.to.re "username") (str.to.re "password") (str.to.re "domain")))) (str.to.re "=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "'") (str.to.re "%27")) (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pmi\x0a")))))
(check-sat)

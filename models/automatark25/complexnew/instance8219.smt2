(declare-const X String)
; \$?GP[a-z]{3,},([a-z0-9\.]*,)+([a-z0-9]{1,2}\*[a-z0-9]{1,2})
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (str.to.re "GP,") (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (str.to.re ","))) (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "a" "z")) (re.* (re.range "a" "z")) ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "*") ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9")))))))
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "alert") (re.+ (re.range "0" "9")) (str.to.re "an") (re.* re.allchar) (str.to.re "Spyiz=e2give.comrichfind.com\x0a"))))
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovplLogtraffbest\x2EbizAdToolsLoggedsidesearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to.re "ovplLogtraffbest.bizAdToolsLoggedsidesearch.dropspam.com\x0a"))))
; /\x2e(jpg|png|gif)\x3fs?v.*?&tq=g[A-Z0-9]{2}/U
(assert (str.in.re X (re.++ (str.to.re "/.") (re.union (str.to.re "jpg") (str.to.re "png") (str.to.re "gif")) (str.to.re "?") (re.opt (str.to.re "s")) (str.to.re "v") (re.* re.allchar) (str.to.re "&tq=g") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)

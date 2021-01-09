(declare-const X String)
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "httphost") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "www.maxifiles.com\x0a"))))
; \<script[^>]*>[\w|\t|\r\|\W]*?</script>
(assert (not (str.in.re X (re.++ (str.to.re "<script") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "|") (str.to.re "\x09") (str.to.re "\x0d") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>\x0a")))))
; ^(0\.|([1-9]([0-9]+)?)\.){3}(0|([1-9]([0-9]+)?)){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (str.to.re "0.") (re.++ (str.to.re ".") (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.opt (re.+ (re.range "0" "9")))))) (str.to.re "\x0a")))))
; Subject\x3A.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a"))))
(check-sat)

(declare-const X String)
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.com\x0a"))))
; ^([0-9]*\,?[0-9]+|[0-9]+\,?[0-9]*)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a")))))
; ^[^\"]+$
(assert (str.in.re X (re.++ (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x0a"))))
(check-sat)

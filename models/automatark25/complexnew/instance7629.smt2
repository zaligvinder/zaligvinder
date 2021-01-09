(declare-const X String)
; <script[^>]*>[\w|\t|\r|\W]*</script>
(assert (not (str.in.re X (re.++ (str.to.re "<script") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "|") (str.to.re "\x09") (str.to.re "\x0d") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>\x0a")))))
; ^([-+]?(\d+\.?\d*|\d*\.?\d+))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9")))))))
; ^[a-zA-Z0-9\-]+\.cn$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".cn\x0a"))))
; ^([A-Z]{0,3}?[0-9]{9}($[0-9]{0}|[A-Z]{1}))
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 0 3) (re.range "A" "Z")) ((_ re.loop 9 9) (re.range "0" "9")) (re.union ((_ re.loop 0 0) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z"))))))
(check-sat)

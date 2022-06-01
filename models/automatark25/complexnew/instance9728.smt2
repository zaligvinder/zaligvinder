(declare-const X String)
; gpstool\u{2e}globaladserver\u{2e}com\daction\u{2E}\w+data2\.activshopper\.com
(assert (not (str.in_re X (re.++ (str.to_re "gpstool.globaladserver.com") (re.range "0" "9") (str.to_re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "data2.activshopper.com\u{a}")))))
; <[^>]+>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.+ (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
(check-sat)

(declare-const X String)
; (^([A-Za-z])([-_.\dA-Za-z]{1,10})([\dA-Za-z]{1}))(@)(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([\dA-Za-z{1}][-_.\dA-Za-z]{1,25})\.([A-Za-z]{2,4}))$)
(assert (not (str.in.re X (re.++ (str.to.re "@") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "{") (str.to.re "1") (str.to.re "}")) ((_ re.loop 1 25) (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))))) (str.to.re "\x0a") (re.union (re.range "A" "Z") (re.range "a" "z")) ((_ re.loop 1 10) (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))))))
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a")))))
; /Referer\x3a\x20[\x20-\x7E]*?\/wp\x2dadmin\/[a-z\d\x2d]+?\.php\r\n/Hi
(assert (str.in.re X (re.++ (str.to.re "/Referer: ") (re.* (re.range " " "~")) (str.to.re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".php\x0d\x0a/Hi\x0a"))))
; t=ProtoUser-Agent\x3Aquick\x2Eqsrch\x2Ecom
(assert (not (str.in.re X (str.to.re "t=ProtoUser-Agent:quick.qsrch.com\x0a"))))
(check-sat)

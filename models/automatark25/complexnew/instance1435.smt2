(declare-const X String)
; \b[A-z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "%") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "A" "Z")) (str.to.re "\x0a")))))
; ^([4]{1})([0-9]{12,15})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "4")) ((_ re.loop 12 15) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^((http://)|(https://))((([a-zA-Z0-9_-]*).?([a-zA-Z0-9_-]*))|(([a-zA-Z0-9_-]*).?([a-zA-Z0-9_-]*).?([a-zA-Z0-9_-]*)))/?([a-zA-Z0-9_/?%=&+#.-~]*)$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "http://") (str.to.re "https://")) (re.union (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt re.allchar) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-")))) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt re.allchar) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt re.allchar) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))))) (re.opt (str.to.re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "/") (str.to.re "?") (str.to.re "%") (str.to.re "=") (str.to.re "&") (str.to.re "+") (str.to.re "#") (re.range "." "~"))) (str.to.re "\x0a")))))
; /\/home\/index.asp\?typeid\=[0-9]{1,3}/Ui
(assert (str.in.re X (re.++ (str.to.re "//home/index") re.allchar (str.to.re "asp?typeid=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)

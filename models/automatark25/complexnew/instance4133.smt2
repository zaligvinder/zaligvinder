(declare-const X String)
; ^[+-]?\d+(\.\d{1,4})? *%?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\&k=\d+($|\&h=)/U
(assert (not (str.in.re X (re.++ (str.to.re "/&k=") (re.+ (re.range "0" "9")) (str.to.re "&h=/U\x0a")))))
; ^-?[0-9]{0,2}(\.[0-9]{1,2})?$|^-?(100)(\.[0]{1,2})?$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "-")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (str.to.re "0")))) (str.to.re "\x0a")))))
; url\(['"]?([\w\d_\-\. ]+)['"]?\)
(assert (str.in.re X (re.++ (str.to.re "url(") (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (re.+ (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re ")\x0a"))))
(check-sat)

(declare-const X String)
; (\[a url=\"[^\[\]\"]*\"\])([^\[\]]+)(\[/a\])
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/a]\x0a[a url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22]")))))
; ^\d{0,2}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3A\d+\.compress.*sidebar\.activeshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.com\x0a")))))
(check-sat)

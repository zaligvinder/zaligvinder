(declare-const X String)
; /\/\d+\/\d\.zip\x27\x3b/
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re "/") (re.range "0" "9") (str.to.re ".zip';/\x0a"))))
; (\[a url=\"[^\[\]\"]*\"\])([^\[\]]+)(\[/a\])
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/a]\x0a[a url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22]"))))
; https?://[\d.A-Za-z-]+\.[A-Za-z]{2,6}/?
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (re.range "0" "9") (str.to.re ".") (re.range "A" "Z") (re.range "a" "z") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re "/")) (str.to.re "\x0a")))))
(check-sat)

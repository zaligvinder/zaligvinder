(declare-const X String)
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a")))))
; /^(8-?|\+?7-?)?(\(?\d{3}\)?)-?(\d-?){6}\d$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (str.to.re "8") (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "+")) (str.to.re "7") (re.opt (str.to.re "-"))))) (re.opt (str.to.re "-")) ((_ re.loop 6 6) (re.++ (re.range "0" "9") (re.opt (str.to.re "-")))) (re.range "0" "9") (str.to.re "/\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")))))
; /\x2f[A-F0-9]{158}/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 158 158) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; /\/load_module\.php\?user\=(n1|1|2|11)$/U
(assert (not (str.in.re X (re.++ (str.to.re "//load_module.php?user=") (re.union (str.to.re "n1") (str.to.re "1") (str.to.re "2") (str.to.re "11")) (str.to.re "/U\x0a")))))
; (^\d{1,5}$|^\d{1,5}\.\d{1,2}$)
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)

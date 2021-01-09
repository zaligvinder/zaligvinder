(declare-const X String)
; ([(]?\d{3}[)]?(-| |.)?\d{3}(-| |.)?\d{4})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") re.allchar)) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") re.allchar)) ((_ re.loop 4 4) (re.range "0" "9"))))))
; SecureNet.*\x2Fsearchfast\x2F
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.* re.allchar) (str.to.re "/searchfast/\x0a")))))
; url=\"([^\[\]\"]*)\"
(assert (str.in.re X (re.++ (str.to.re "url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
(check-sat)

(declare-const X String)
; spas\s+This\s+\x7D\x7BPassword\x3A\s+OSSProxy\x5Chome\/lordofsearch
(assert (str.in.re X (re.++ (str.to.re "spas") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "This") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OSSProxy\x5chome/lordofsearch\x0a"))))
; /META-INF.*?[a-zA-Z]{7}\.class/smi
(assert (str.in.re X (re.++ (str.to.re "/META-INF") (re.* re.allchar) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".class/smi\x0a"))))
; ^((\+){1}[1-9]{1}[0-9]{0,1}[0-9]{0,1}(\s){1}[\(]{1}[1-9]{1}[0-9]{1,5}[\)]{1}[\s]{1})[1-9]{1}[0-9]{4,9}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 4 9) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 1 1) (str.to.re "+")) ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 5) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) ((_ re.loop 1 1) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
(check-sat)

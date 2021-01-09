(declare-const X String)
; www\x2Efreescratchandwin\x2Ecom\w+Port.*User-Agent\x3AToolbarkit
(assert (not (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Port") (re.* re.allchar) (str.to.re "User-Agent:Toolbarkit\x0a")))))
; ^\+?\(?\d+\)?(\s|\-|\.)?\d{1,3}(\s|\-|\.)?\d{4}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (str.to.re "(")) (re.+ (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; \s*("[^"]+"|[^ ,]+)
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.+ (re.union (str.to.re " ") (str.to.re ",")))) (str.to.re "\x0a"))))
; ^(V-|I-)?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "V-") (str.to.re "I-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[[V|E|J|G]\d\d\d\d\d\d\d\d]{0,9}$
(assert (str.in.re X (re.++ (re.union (str.to.re "[") (str.to.re "V") (str.to.re "|") (str.to.re "E") (str.to.re "J") (str.to.re "G")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") ((_ re.loop 0 9) (str.to.re "]")) (str.to.re "\x0a"))))
(check-sat)

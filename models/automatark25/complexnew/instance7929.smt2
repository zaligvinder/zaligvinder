(declare-const X String)
; ^\s*[a-zA-Z0-9&\-\./,\s]+\s*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "&") (str.to.re "-") (str.to.re ".") (str.to.re "/") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; /^\x2f[0-9A-F]{42}$/Um
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 42 42) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Um\x0a"))))
; /[a-zA-Z]/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "/\x0a")))))
; www\x2Efreescratchandwin\x2Ecom\w+Port.*User-Agent\x3AToolbarkit
(assert (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Port") (re.* re.allchar) (str.to.re "User-Agent:Toolbarkit\x0a"))))
(check-sat)

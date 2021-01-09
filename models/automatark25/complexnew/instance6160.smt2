(declare-const X String)
; www\x2Efreescratchandwin\x2Ecom\w+Port.*User-Agent\x3AToolbarkit
(assert (not (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Port") (re.* re.allchar) (str.to.re "User-Agent:Toolbarkit\x0a")))))
; ^([\w\s\W]+[\w\W]?)\s([\d\-\\\/\w]*)?
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.opt (re.* (re.union (re.range "0" "9") (str.to.re "-") (str.to.re "\x5c") (str.to.re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "\x0a") (re.+ (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; ^\d*(\.\d*)$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9")))))
(check-sat)

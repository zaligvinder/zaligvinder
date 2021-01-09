(declare-const X String)
; [^(\&)](\w*)+(\=)[\w\d ]*
(assert (not (str.in.re X (re.++ (re.union (str.to.re "(") (str.to.re "&") (str.to.re ")")) (re.+ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "=") (re.* (re.union (re.range "0" "9") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /\/download\.asp\?p\=\d$/Ui
(assert (str.in.re X (re.++ (str.to.re "//download.asp?p=") (re.range "0" "9") (str.to.re "/Ui\x0a"))))
; libManager\x2Edll\x5Eget
(assert (str.in.re X (str.to.re "libManager.dll^get\x0a")))
; (private|public|protected)\s\w(.)*\((.)*\)[^;]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* re.allchar) (str.to.re "(") (re.* re.allchar) (str.to.re ")") (re.comp (str.to.re ";")) (str.to.re "\x0ap") (re.union (str.to.re "rivate") (str.to.re "ublic") (str.to.re "rotected")))))
; \([+]?[ ]?\d{1,3}[)][ ]?[(][+]?[ ]?\d{1,3}[)][- ]?\d{4}[- ]?\d{4}
(assert (not (str.in.re X (re.++ (str.to.re "(") (re.opt (str.to.re "+")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " ")) (str.to.re "(") (re.opt (str.to.re "+")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

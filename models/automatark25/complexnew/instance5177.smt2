(declare-const X String)
; ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.* (re.union (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re " ") (str.to.re "(") (str.to.re ")"))) (str.to.re "\x0a")))))
; Pattern that matches all DVLA Vehicle Registration Marks (VRM). Allows for an optional single space between segments.
(assert (not (str.in.re X (re.++ (str.to.re "Pattern that matches all DVLA Vehicle Registration Marks VRM") re.allchar (str.to.re " Allows for an optional single space between segments") re.allchar (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eflac/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flac/i\x0a")))))
; [\w]+\@[\w]+\.?[\w]+?\.?[\w]+?\.?[\w+]{2,4}
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) ((_ re.loop 2 4) (re.union (str.to.re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /^\/images2\/[0-9a-fA-F]{500,}/U
(assert (not (str.in.re X (re.++ (str.to.re "//images2//U\x0a") ((_ re.loop 500 500) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))))))
(check-sat)

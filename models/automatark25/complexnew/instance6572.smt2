(declare-const X String)
; /^[oz]/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "o") (str.to.re "z")) (str.to.re "/Ri\x0a")))))
; Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (not (str.in.re X (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a"))))
; \b[\w]+[\w.-][\w]+@[\w]+[\w.-]\.[\w]{2,4}\b
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; ^\d+?(\.\d+)?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\.mkv/
(assert (not (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".mkv/\x0a")))))
(check-sat)

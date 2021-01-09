(declare-const X String)
; ((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (re.opt (str.to.re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to.re "."))) (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (re.opt (str.to.re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eavi/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".avi/i\x0a")))))
; /filename=[^\n]*\x2eaif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aif/i\x0a"))))
; <[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; /filename=[\x22\x27]?[^\n]*\x2egni[\x22\x27\s]/si
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gni") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a")))))
(check-sat)

(declare-const X String)
; /filename=[^\n]*\x2edws/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dws/i\x0a"))))
; /filename=[^\n]*\x2erdp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rdp/i\x0a")))))
; <title>(.*?)</title>
(assert (str.in.re X (re.++ (str.to.re "<title>") (re.* re.allchar) (str.to.re "</title>\x0a"))))
; /filename=[^\n]*\x2ecsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csd/i\x0a"))))
; ([+(]?\d{0,2}[)]?)([-/.\s]?\d+)+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "/") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "+") (str.to.re "("))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (str.to.re ")"))))))
(check-sat)

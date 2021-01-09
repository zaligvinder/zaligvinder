(declare-const X String)
; ^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^(.*?)([^/\\]*?)(\.[^/\\.]*)?$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.* (re.union (str.to.re "/") (str.to.re "\x5c"))) (re.opt (re.++ (str.to.re ".") (re.* (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re "."))))) (str.to.re "\x0a")))))
; (\"http:\/\/www\.youtube\.com\/v\/\w{11}\&rel\=1\")
(assert (not (str.in.re X (re.++ (str.to.re "\x0a\x22http://www.youtube.com/v/") ((_ re.loop 11 11) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&rel=1\x22")))))
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (not (str.in.re X (re.++ (str.to.re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to.re "\x0a")))))
; /filename=[^\n]*\x2empeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpeg/i\x0a"))))
(check-sat)

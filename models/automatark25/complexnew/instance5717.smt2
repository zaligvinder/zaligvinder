(declare-const X String)
; /filename=[^\n]*\x2epsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a"))))
; (((s*)(ftp)(s*)|(http)(s*)|mailto|news|file|webcal):(\S*))|((www.)(\S*))
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (re.* (str.to.re "s")) (str.to.re "ftp") (re.* (str.to.re "s"))) (re.++ (str.to.re "http") (re.* (str.to.re "s"))) (str.to.re "mailto") (str.to.re "news") (str.to.re "file") (str.to.re "webcal")) (str.to.re ":") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.++ (str.to.re "\x0a") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "www") re.allchar))))
; /^\/f\/1\d{9}\/\d{9,10}(\/\d)+$/U
(assert (str.in.re X (re.++ (str.to.re "//f/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 9 10) (re.range "0" "9")) (re.+ (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; (^.+\|+[A-Za-z])
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (str.to.re "|")) (re.union (re.range "A" "Z") (re.range "a" "z")))))
; [:]{1}[-~+o]?[)>]+
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ":")) (re.opt (re.union (str.to.re "-") (str.to.re "~") (str.to.re "+") (str.to.re "o"))) (re.+ (re.union (str.to.re ")") (str.to.re ">"))) (str.to.re "\x0a")))))
(check-sat)

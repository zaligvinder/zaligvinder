(declare-const X String)
; (((s*)(ftp)(s*)|(http)(s*)|mailto|news|file|webcal):(\S*))|((www.)(\S*))
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (re.* (str.to.re "s")) (str.to.re "ftp") (re.* (str.to.re "s"))) (re.++ (str.to.re "http") (re.* (str.to.re "s"))) (str.to.re "mailto") (str.to.re "news") (str.to.re "file") (str.to.re "webcal")) (str.to.re ":") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.++ (str.to.re "\x0a") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "www") re.allchar)))))
; /filename=[^\n]*\x2edcr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a"))))
; ^[^<>&~\s^%A-Za-z\\][^A-Za-z%^\\<>]{1,25}$
(assert (str.in.re X (re.++ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "&") (str.to.re "~") (str.to.re "^") (str.to.re "%") (re.range "A" "Z") (re.range "a" "z") (str.to.re "\x5c") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 25) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "%") (str.to.re "^") (str.to.re "\x5c") (str.to.re "<") (str.to.re ">"))) (str.to.re "\x0a"))))
; ^[F][O][\s]?[0-9]{3}$
(assert (not (str.in.re X (re.++ (str.to.re "FO") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)

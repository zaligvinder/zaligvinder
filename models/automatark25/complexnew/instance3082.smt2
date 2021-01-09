(declare-const X String)
; URL\s+\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "URL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".cfgmPOPrtCUSTOMPalToolbarUser-Agent:\x0a"))))
; /filename=[^\n]*\x2exps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xps/i\x0a")))))
; <[^>]*\n?.*=("|')?(.*\.jpg)("|')?.*\n?[^<]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (re.opt (str.to.re "\x0a")) (re.* re.allchar) (str.to.re "=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* re.allchar) (re.opt (str.to.re "\x0a")) (re.* (re.comp (str.to.re "<"))) (str.to.re ">\x0a") (re.* re.allchar) (str.to.re ".jpg"))))
; ^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to.re "\x0a")))))
; /sid=[0-9A-F]{32}/U
(assert (str.in.re X (re.++ (str.to.re "/sid=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/U\x0a"))))
(check-sat)

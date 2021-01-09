(declare-const X String)
; /^([a-zA-Z0-9])(([\-.]|[_]+)?([a-zA-Z0-9]+))*(@){1}([a-z0-9]|([a-z0-9][\-]))+[.]{1}(([a-z]{2,3})|([a-z]{2,3}[.]{1}[a-z]{2,3}))$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.union (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re "-")) (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) (re.union ((_ re.loop 2 3) (re.range "a" "z")) (re.++ ((_ re.loop 2 3) (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 3) (re.range "a" "z")))) (str.to.re "/\x0a")))))
; AID\x2FHost\x3aHourskl\x2Esearch\x2Eneed2find\x2EcomHost\x3aHost\x3A
(assert (not (str.in.re X (str.to.re "AID/Host:Hourskl.search.need2find.comHost:Host:\x0a"))))
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to.re "/U\x0a"))))
; ^[\w0-9]+( [\w0-9]+)*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (str.to.re " ") (re.+ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2epdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a"))))
(check-sat)

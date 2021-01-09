(declare-const X String)
; /\x23\d{2}\x3a\d{2}\x3a\d\d$/R
(assert (not (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") (re.range "0" "9") (re.range "0" "9") (str.to.re "/R\x0a")))))
; /("(\\["\\]|[^"])*("|$)|\S)+/g
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "/g\x0a"))))
; \x22reaction\x2Etxt\x22\d+sErverdist\x2Eatlas\x2Dia\x2EcomUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.+ (re.range "0" "9")) (str.to.re "sErverdist.atlas-ia.comUser-Agent:\x0a"))))
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; /filename=[^\n]*\x2ecrx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".crx/i\x0a")))))
(check-sat)

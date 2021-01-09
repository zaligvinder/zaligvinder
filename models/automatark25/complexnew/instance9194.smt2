(declare-const X String)
; ^[a-zA-Z\d]+(([\'\,\.\- #][a-zA-Z\d ])?[a-zA-Z\d]*[\.]*)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-") (str.to.re " ") (str.to.re "#")) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (str.to.re ".")))) (str.to.re "\x0a"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (not (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a"))))
; /filename=[^\n]*\x2exlw/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xlw/i\x0a"))))
; ^[0-9]{5}([\s-]{1}[0-9]{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)

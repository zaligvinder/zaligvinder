(declare-const X String)
; Netspy\s\x3Aauto\x2Eisearch\x2EcomUser-Agent\x3Aaohobygi\x2fzwiwHWAEfhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (re.++ (str.to.re "Netspy") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":auto.isearch.comUser-Agent:aohobygi/zwiwHWAEfhfksjzsfu/ahm.uqs\x0a")))))
; /filename=[^\n]*\x2eamf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".amf/i\x0a")))))
; ^<\s*(td|TD)\s*(\w|\W)*\s*>(\w|\W)*</(td|TD)>$
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "td") (str.to.re "TD")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">") (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</") (re.union (str.to.re "td") (str.to.re "TD")) (str.to.re ">\x0a")))))
; \d{10,12}@[a-zA-Z].[a-zA-Z].*
(assert (str.in.re X (re.++ ((_ re.loop 10 12) (re.range "0" "9")) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z")) re.allchar (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar) (str.to.re "\x0a"))))
; &#([0-9]{1,5}|x[0-9a-fA-F]{1,4});
(assert (not (str.in.re X (re.++ (str.to.re "&#") (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ (str.to.re "x") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to.re ";\x0a")))))
(check-sat)

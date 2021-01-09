(declare-const X String)
; [a-zA-Z][a-zA-Z0-9_\-\,\.]{5,31}
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ejpe/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpe/i\x0a")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; (t|T)(o|O)\s\d{4}($|\D)
(assert (str.in.re X (re.++ (re.union (str.to.re "t") (str.to.re "T")) (re.union (str.to.re "o") (str.to.re "O")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (re.comp (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)

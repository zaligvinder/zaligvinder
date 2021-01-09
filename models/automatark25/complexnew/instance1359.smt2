(declare-const X String)
; www\x2Ericercadoppia\x2Ecom\w+TPSystem\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; ((FI|HU|LU|MT|SI)-?)?[0-9]{8}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "FI") (str.to.re "HU") (str.to.re "LU") (str.to.re "MT") (str.to.re "SI")) (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\+[0-9]{1,3}\.[0-9]+\.[0-9]+$
(assert (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ejif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jif/i\x0a")))))
; <script[^>]*>[\w|\t|\r|\W]*</script>
(assert (str.in.re X (re.++ (str.to.re "<script") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "|") (str.to.re "\x09") (str.to.re "\x0d") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>\x0a"))))
(check-sat)

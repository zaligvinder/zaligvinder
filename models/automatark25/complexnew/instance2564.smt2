(declare-const X String)
; \\[\\w{2}\\]
(assert (not (str.in.re X (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "{") (str.to.re "2") (str.to.re "}")) (str.to.re "\x0a")))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (str.in.re X (re.++ (str.to.re "/?spl=") (re.range "0" "9") (str.to.re "&br=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&vers=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&s=/H\x0a"))))
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (not (str.in.re X (re.++ (str.to.re "[0-9") ((_ re.loop 4 4) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "\x0a")))))
; ^([1-9][0-9]?|100)%$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to.re "100")) (str.to.re "%\x0a")))))
; [0-9]{5}\s?[0-9]{5}
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)

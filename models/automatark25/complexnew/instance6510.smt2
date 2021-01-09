(declare-const X String)
; ^[A-Za-z]{2}[ ]{0,1}[0-9]{2}[ ]{0,1}[a-zA-Z]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "information") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a")))))
; body=\x2521\x2521\x2521Optix\s+Host\x3a
(assert (str.in.re X (re.++ (str.to.re "body=%21%21%21Optix\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; @([_a-zA-Z]+)
(assert (not (str.in.re X (re.++ (str.to.re "@") (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; ^[a-zA-Z0-9]{1,20}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)

(declare-const X String)
; www\x2Ericercadoppia\x2Ecom\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; /^(Frame)?\.jsf/R
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "Frame")) (str.to.re ".jsf/R\x0a"))))
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13fromReferer:search.conduit.com/dss/cc.2_0_0.\x0a"))))
; ^((([a-z0-9])+([\w.-]{1})?)+([^\W_]{1}))+@((([a-z0-9])+([\w-]{1})?)+([^\W_]{1}))+\.[a-z]{2,3}(\.[a-z]{2,4})?$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "_"))))) (str.to.re "@") (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "_"))))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a")))))
(check-sat)

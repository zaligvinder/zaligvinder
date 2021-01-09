(declare-const X String)
; ^-?((([1]?[0-7][0-9]|[1-9]?[0-9])\.{1}\d{1,6}$)|[1]?[1-8][0]\.{1}0{1,6}$)
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "1")) (re.range "0" "7") (re.range "0" "9")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "1")) (re.range "1" "8") (str.to.re "0") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (str.to.re "0")))) (str.to.re "\x0a"))))
; Client\d+Subject\x3AisBysooTBwhenu\x2EcomToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Client") (re.+ (re.range "0" "9")) (str.to.re "Subject:isBysooTBwhenu.com\x1bToolbar\x0a")))))
; \x2Fxml\x2Ftoolbar\x2F
(assert (str.in.re X (str.to.re "/xml/toolbar/\x0a")))
; www\x2Ericercadoppia\x2Ecom\w+TPSystem\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; /filename=[^\n]*\x2eswf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a"))))
(check-sat)

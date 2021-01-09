(declare-const X String)
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (not (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to.re "/U\x0a")))))
; /filename=[^\n]*\x2ertx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rtx/i\x0a"))))
; ^-?((([1]?[0-7][0-9]|[1-9]?[0-9])\.{1}\d{1,6}$)|[1]?[1-8][0]\.{1}0{1,6}$)
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "1")) (re.range "0" "7") (re.range "0" "9")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "1")) (re.range "1" "8") (str.to.re "0") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (str.to.re "0")))) (str.to.re "\x0a")))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "that") (re.* re.allchar) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "CasinoBladeisInsideupdate.cgiHost:\x0a")))))
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (not (str.in.re X (str.to.re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\x0a"))))
(check-sat)

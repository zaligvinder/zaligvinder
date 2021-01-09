(declare-const X String)
; /filename=[^\n]*\x2ejmh/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jmh/i\x0a"))))
; ^([0-1]?[0-9]{1}/[0-3]?[0-9]{1}/20[0-9]{2})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/") (re.opt (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/20") ((_ re.loop 2 2) (re.range "0" "9")))))
; /\?action=\w+gen&v=\d+/U
(assert (str.in.re X (re.++ (str.to.re "/?action=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gen&v=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a"))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a")))
(check-sat)

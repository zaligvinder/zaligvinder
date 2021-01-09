(declare-const X String)
; ConnectionUser-Agent\x3A\swww\.fast-finder\.com
(assert (not (str.in.re X (re.++ (str.to.re "ConnectionUser-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a")))))
; rank\x2Etoolbarbrowser\x2Ecomlnzzlnbk\x2fpkrm\.fin
(assert (str.in.re X (str.to.re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\x0a")))
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in.re X (str.to.re "Subject:AlexaOnline%21%21%21\x0a"))))
; /^\/blog\/[a-zA-Z0-9]{3}\.(g(3|e)d|mm|vru|be|nut)$/U
(assert (str.in.re X (re.++ (str.to.re "//blog/") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") (re.union (re.++ (str.to.re "g") (re.union (str.to.re "3") (str.to.re "e")) (str.to.re "d")) (str.to.re "mm") (str.to.re "vru") (str.to.re "be") (str.to.re "nut")) (str.to.re "/U\x0a"))))
(check-sat)

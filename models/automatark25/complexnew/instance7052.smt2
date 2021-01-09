(declare-const X String)
; \b(((\S+)?)(@|mailto\:|(news|(ht|f)tp(s?))\://)\S+)\b
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.union (str.to.re "@") (str.to.re "mailto:") (re.++ (re.union (str.to.re "news") (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (str.to.re "://"))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))))
; /filename=[^\n]*\x2ecrx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".crx/i\x0a")))))
; ^(([0]?[0-5][0-9]|[0-9]):([0-5][0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "5") (re.range "0" "9")) (re.range "0" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
; Host\x3a\x7D\x7BPort\x3Awww\x2Einstafinder\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:}{Port:www.instafinder.com\x0a"))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (not (str.in.re X (re.++ (str.to.re "//Type/XRef/W[") (re.* (re.comp (str.to.re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to.re "/smi\x0a")))))
(check-sat)

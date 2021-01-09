(declare-const X String)
; \b(((\S+)?)(@|mailto\:|(news|(ht|f)tp(s?))\://)\S+)\b
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.union (str.to.re "@") (str.to.re "mailto:") (re.++ (re.union (str.to.re "news") (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (str.to.re "://"))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))))
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.* re.allchar) (str.to.re "Cookie:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "richfind.comSimpsonFrom:\x0a")))))
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
(check-sat)

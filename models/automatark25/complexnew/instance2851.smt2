(declare-const X String)
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (not (str.in.re X (str.to.re "User-Agent:BetaWordixqshv/qzccsServer\x00\x0a"))))
; ^[1-9]{1}$|^[1-9]{1}[0-9]{1}$|^[1-3]{1}[0-6]{1}[0-5]{1}$|^365$
(assert (str.in.re X (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "3")) ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 1 1) (re.range "0" "5"))) (str.to.re "365\x0a"))))
; HXLogOnlyanHost\x3AspasHost\x3A
(assert (not (str.in.re X (str.to.re "HXLogOnlyanHost:spasHost:\x0a"))))
; ^0$|^[1-9][0-9]*$|^[1-9][0-9]{0,2}(,[0-9]{3})$
(assert (not (str.in.re X (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a,") ((_ re.loop 3 3) (re.range "0" "9")))))))
; Mirar_KeywordContent
(assert (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a")))
(check-sat)

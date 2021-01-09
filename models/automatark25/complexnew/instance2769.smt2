(declare-const X String)
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (not (str.in.re X (str.to.re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\x0a"))))
; \x5BStatic\w+www\.iggsey\.comUser-Agent\x3AX-Mailer\x3aComputer
(assert (str.in.re X (re.++ (str.to.re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.iggsey.comUser-Agent:X-Mailer:\x13Computer\x0a"))))
; /\x2f(css|upload)\x2f[a-z]{2}[0-9]{3}\x2eccs/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.union (str.to.re "css") (str.to.re "upload")) (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".ccs/U\x0a"))))
(check-sat)

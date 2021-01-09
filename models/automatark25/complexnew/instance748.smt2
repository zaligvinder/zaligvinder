(declare-const X String)
; xbqyosoe\x2fcpvmwww\x2eurlblaze\x2enetconfigINTERNAL\.ini
(assert (str.in.re X (str.to.re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\x0a")))
; \x7CConnected\s+adblock\x2Elinkz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "|Connected") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adblock.linkz.com\x0a"))))
; [A-Za-z_.0-9-]+@{1}[a-z]+([.]{1}[a-z]{2,4})+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (str.to.re "-"))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.range "a" "z")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a")))))
(check-sat)

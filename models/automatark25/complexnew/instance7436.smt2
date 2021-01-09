(declare-const X String)
; /filename=[^\n]*\x2ewal/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wal/i\x0a"))))
; /filename=[^\n]*\x2emotn/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".motn/i\x0a"))))
; User-Agent\x3AFrom\x3Awww\x2Eonlinecasinoextra\x2EcomHost\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:From:www.onlinecasinoextra.comHost:\x0a"))))
; www\x2Epurityscan\x2Ecom.*
(assert (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)

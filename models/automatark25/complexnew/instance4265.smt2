(declare-const X String)
; Readydoarauzeraqf\x2fvvv\.ulPALTALKHello\x2EMyAgentUser-Agent\x3AIP-FILEUser-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "Readydoarauzeraqf/vvv.ulPALTALKHello.MyAgentUser-Agent:IP-FILEUser-Agent:User-Agent:\x0a"))))
; ((19|20)[\d]{2}/[\d]{6}/[\d]{2})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9"))))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "HWAE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Email") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:User-Agent:wowokayHost:\x0a")))))
; /filename=[^\n]*\x2ereg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".reg/i\x0a")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a")))))
(check-sat)

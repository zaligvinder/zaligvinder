(declare-const X String)
; Address\x3A\s+SbAtsHTTP_RAT_Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Address:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAtsHTTP_RAT_Subject:\x0a")))))
; /\/AES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (str.in.re X (re.++ (str.to.re "//AES") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a"))))
; www\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "www.searchreslt.com\x0a"))))
; /filename=[^\n]*\x2ehpj/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hpj/i\x0a")))))
; mPOPUser-Agent\x3AgotS\x3aUsers\x5cPORT\x3DHXLogOnlyMGS-Internal-Web-Manager
(assert (not (str.in.re X (str.to.re "mPOPUser-Agent:gotS:Users\x5cPORT=HXLogOnlyMGS-Internal-Web-Manager\x0a"))))
(check-sat)

(declare-const X String)
; /filename=[^\n]*\x2eskm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".skm/i\x0a"))))
; ([a-zA-Z0-9_\-\.]+)(@[a-zA-Z0-9_\-\.]+)
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "\x0a@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))))))
; TM_SEARCH3SearchUser-Agent\x3Aas\x2Estarware\x2EcomM\x2EzipCasinoResults_sq=aolsnssignin
(assert (str.in.re X (str.to.re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\x0a")))
; Spy\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
(check-sat)

(declare-const X String)
; TM_SEARCH3SearchUser-Agent\x3Aas\x2Estarware\x2EcomM\x2EzipCasinoResults_sq=aolsnssignin
(assert (not (str.in.re X (str.to.re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\x0a"))))
; Anal\s+news.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Anal") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
; ^(ac|AC|al|AL|am|AM|ap|AP|ba|BA|ce|CE|df|DF|es|ES|go|GO|ma|MA|mg|MG|ms|MS|mt|MT|pa|PA|pb|PB|pe|PE|pi|PI|pr|PR|rj|RJ|rn|RN|ro|RO|rr|RR|rs|RS|sc|SC|se|SE|sp|SP|to|TO)$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "ac") (str.to.re "AC") (str.to.re "al") (str.to.re "AL") (str.to.re "am") (str.to.re "AM") (str.to.re "ap") (str.to.re "AP") (str.to.re "ba") (str.to.re "BA") (str.to.re "ce") (str.to.re "CE") (str.to.re "df") (str.to.re "DF") (str.to.re "es") (str.to.re "ES") (str.to.re "go") (str.to.re "GO") (str.to.re "ma") (str.to.re "MA") (str.to.re "mg") (str.to.re "MG") (str.to.re "ms") (str.to.re "MS") (str.to.re "mt") (str.to.re "MT") (str.to.re "pa") (str.to.re "PA") (str.to.re "pb") (str.to.re "PB") (str.to.re "pe") (str.to.re "PE") (str.to.re "pi") (str.to.re "PI") (str.to.re "pr") (str.to.re "PR") (str.to.re "rj") (str.to.re "RJ") (str.to.re "rn") (str.to.re "RN") (str.to.re "ro") (str.to.re "RO") (str.to.re "rr") (str.to.re "RR") (str.to.re "rs") (str.to.re "RS") (str.to.re "sc") (str.to.re "SC") (str.to.re "se") (str.to.re "SE") (str.to.re "sp") (str.to.re "SP") (str.to.re "to") (str.to.re "TO")) (str.to.re "\x0a")))))
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Arrow") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "whenu.com\x13\x0a"))))
(check-sat)

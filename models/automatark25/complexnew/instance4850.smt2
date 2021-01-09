(declare-const X String)
; Host\x3A\d+ver\d+sportsUBAgent
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "ver") (re.+ (re.range "0" "9")) (str.to.re "sportsUBAgent\x0a"))))
; ^(ac|AC|al|AL|am|AM|ap|AP|ba|BA|ce|CE|df|DF|es|ES|go|GO|ma|MA|mg|MG|ms|MS|mt|MT|pa|PA|pb|PB|pe|PE|pi|PI|pr|PR|rj|RJ|rn|RN|ro|RO|rr|RR|rs|RS|sc|SC|se|SE|sp|SP|to|TO)$
(assert (str.in.re X (re.++ (re.union (str.to.re "ac") (str.to.re "AC") (str.to.re "al") (str.to.re "AL") (str.to.re "am") (str.to.re "AM") (str.to.re "ap") (str.to.re "AP") (str.to.re "ba") (str.to.re "BA") (str.to.re "ce") (str.to.re "CE") (str.to.re "df") (str.to.re "DF") (str.to.re "es") (str.to.re "ES") (str.to.re "go") (str.to.re "GO") (str.to.re "ma") (str.to.re "MA") (str.to.re "mg") (str.to.re "MG") (str.to.re "ms") (str.to.re "MS") (str.to.re "mt") (str.to.re "MT") (str.to.re "pa") (str.to.re "PA") (str.to.re "pb") (str.to.re "PB") (str.to.re "pe") (str.to.re "PE") (str.to.re "pi") (str.to.re "PI") (str.to.re "pr") (str.to.re "PR") (str.to.re "rj") (str.to.re "RJ") (str.to.re "rn") (str.to.re "RN") (str.to.re "ro") (str.to.re "RO") (str.to.re "rr") (str.to.re "RR") (str.to.re "rs") (str.to.re "RS") (str.to.re "sc") (str.to.re "SC") (str.to.re "se") (str.to.re "SE") (str.to.re "sp") (str.to.re "SP") (str.to.re "to") (str.to.re "TO")) (str.to.re "\x0a"))))
; /^simple\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in.re X (re.++ (str.to.re "/simple|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a"))))
; \d{4}-?\d{4}-?\d{4}-?\d{4}
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
(check-sat)

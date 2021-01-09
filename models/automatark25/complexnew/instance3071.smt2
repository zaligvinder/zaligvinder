(declare-const X String)
; /\x2epdf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pdf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2FX-Mailer\x3A
(assert (str.in.re X (str.to.re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\x13\x0a")))
; offers\x2Ebullseye-network\x2Ecom[^\n\r]*this\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "offers.bullseye-network.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "this") (re.range "0" "9") (str.to.re "www.trustedsearch.com\x0a")))))
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "RXFilteredDmInf^\x0a"))))
(check-sat)

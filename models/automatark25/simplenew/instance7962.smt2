(declare-const X String)
; ClientsConnected-\d+online-casino-searcher\.com\s+Warezxmlns\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ClientsConnected-") (re.+ (re.range "0" "9")) (str.to.re "online-casino-searcher.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:\x0a")))))
(check-sat)

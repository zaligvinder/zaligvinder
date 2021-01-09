(declare-const X String)
; ClientsConnected-\d+online-casino-searcher\.com\s+Warezxmlns\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ClientsConnected-") (re.+ (re.range "0" "9")) (str.to.re "online-casino-searcher.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:\x0a")))))
; User-Agent\x3A\s+information\swww\x2Etopadwarereviews\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "information") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.topadwarereviews.com\x0a"))))
; ToolbarUser-Agent\x3Awww\x2Ewebcruiser\x2EccDaemonUser-Agent\x3A
(assert (str.in.re X (str.to.re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\x0a")))
(check-sat)

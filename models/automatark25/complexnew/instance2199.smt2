(declare-const X String)
; <script[^>]*>[\w|\t|\r|\W]*</script>
(assert (str.in.re X (re.++ (str.to.re "<script") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "|") (str.to.re "\x09") (str.to.re "\x0d") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>\x0a"))))
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a")))))
; \|(http.*)\|(.*)$/ig
(assert (str.in.re X (re.++ (str.to.re "||") (re.* re.allchar) (str.to.re "/ig\x0ahttp") (re.* re.allchar))))
; Agent\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a"))))
; ^\d{10}$
(assert (str.in.re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)

(declare-const X String)
; HXLogOnly\w+areSubject\x3a\swww\.fast-finder\.comawbeta\.net-nucleus\.com
(assert (not (str.in.re X (re.++ (str.to.re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "areSubject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.comawbeta.net-nucleus.com\x0a")))))
; TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2FX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\x13\x0a"))))
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (str.in.re X (re.++ (str.to.re "/&destination_ip=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "`") (str.to.re "$(") (str.to.re "%60") (str.to.re "%24%28")) (str.to.re "/Pmi\x0a"))))
(check-sat)

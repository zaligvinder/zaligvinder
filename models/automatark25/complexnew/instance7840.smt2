(declare-const X String)
; /User-Agent\x3a\x20[^\n]*?WinHttp\x2eWinHttpRequest.*?\n/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to.re "\x0a/H\x0a"))))
; www\.thecommunicator\.net\sHost\x3A\dhoroscope2
(assert (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.range "0" "9") (str.to.re "horoscope2\x0a"))))
; /window\x2elocation\s*=\s*unescape\s*\x28\s*["']\x25[^"']*https?\x3a/
(assert (str.in.re X (re.++ (str.to.re "/window.location") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "unescape") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "%") (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re ":/\x0a"))))
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (str.in.re X (str.to.re "RXnewads1.comSPYcom/index.php?tpid=\x0a")))
(check-sat)

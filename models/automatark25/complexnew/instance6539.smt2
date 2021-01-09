(declare-const X String)
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (not (str.in.re X (str.to.re "Subject:HostYWRtaW46cGFzc3dvcmQ\x0a"))))
; ^[^-]{1}?[^\"\']*$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "-"))) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "\x0a")))))
; toc=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "toc=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a"))))
; /^Host\x3a\s*(194.192.14.125|202.75.58.179|flashupdates.info|nvidiadrivers.info|nvidiasoft.info|nvidiastream.info|rendercodec.info|syncstream.info|videosync.info)/smiH
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "194") re.allchar (str.to.re "192") re.allchar (str.to.re "14") re.allchar (str.to.re "125")) (re.++ (str.to.re "202") re.allchar (str.to.re "75") re.allchar (str.to.re "58") re.allchar (str.to.re "179")) (re.++ (str.to.re "flashupdates") re.allchar (str.to.re "info")) (re.++ (str.to.re "nvidiadrivers") re.allchar (str.to.re "info")) (re.++ (str.to.re "nvidiasoft") re.allchar (str.to.re "info")) (re.++ (str.to.re "nvidiastream") re.allchar (str.to.re "info")) (re.++ (str.to.re "rendercodec") re.allchar (str.to.re "info")) (re.++ (str.to.re "syncstream") re.allchar (str.to.re "info")) (re.++ (str.to.re "videosync") re.allchar (str.to.re "info"))) (str.to.re "/smiH\x0a")))))
; LOGNetBusCookie\x3aToolbar
(assert (not (str.in.re X (str.to.re "LOGNetBusCookie:Toolbar\x0a"))))
(check-sat)

(when (string= (downcase system-name) "nx-ejohansson")
  (require 'server)
  (setq server-use-tcp t
        server-host "192.168.38.180"
        server-name "remote"))

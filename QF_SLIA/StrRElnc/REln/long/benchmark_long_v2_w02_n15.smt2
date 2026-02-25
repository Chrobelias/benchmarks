(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.union (str.to_re "55") (re.* (str.to_re "57"))) (str.to_re "35"))))
(assert (str.in_re x (re.union (re.* (str.to_re "2")) (re.++ (str.to_re "96") (re.* (str.to_re "437"))))))

(assert (<= (+ (* (- 10) (str.len x)) (* 5 (str.to_int x))) 37))

(check-sat)
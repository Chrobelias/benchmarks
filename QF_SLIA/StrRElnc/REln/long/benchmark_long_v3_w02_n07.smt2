(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re x (re.++ (str.to_re "8") (re.++ (str.to_re "61") (re.* (str.to_re "123"))))))
(assert (str.in_re y (re.union (str.to_re "9") (re.* (str.to_re "2")))))
(assert (str.in_re z (re.++ (str.to_re "79") (re.* (str.to_re "9")))))

(assert (<= (+ (* 3 (str.len y)) (* (- 4) (str.to_int y))) 67))

(check-sat)
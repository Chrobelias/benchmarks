(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (re.union (re.range "1" "9") (re.* (str.to_re "3"))) (str.to_re "9"))))
(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "98")) (re.* (str.to_re "125"))))))

(assert (= (+ (* (- 10) (str.len x)) (* 7 (str.len y))) 23))
(assert (>= (+ (* 4 (str.to_int x)) (* 2 (str.to_int y))) 38))
(assert (<= (+ (* 4 (str.to_int x)) (* (- 3) (str.to_int y))) 57))
(assert (= (+ (* 5 (str.len x)) (* (- 4) (str.to_int y))) 53))
(assert (>= (+ (* 4 (str.to_int x)) (* 2 (str.to_int y))) 92))

(check-sat)
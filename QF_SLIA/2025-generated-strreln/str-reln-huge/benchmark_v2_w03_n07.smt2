(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.union (re.+ (str.to_re "25")) (re.union (str.to_re "267") (str.to_re "4")))))
(assert (str.in_re y (re.union (str.to_re "963") (re.union (re.range "6" "9") (re.+ (re.* (str.to_re "49")))))))

(assert (>= (+ (* 4 (str.to_int x)) (* 3 (str.to_int y))) 65))
(assert (<= (+ (* 4 (str.len x)) (str.len y)) 92))
(assert (= (+ (* (- 2) (str.to_int x)) (* 5 (str.to_int y))) 57))

(check-sat)
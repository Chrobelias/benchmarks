(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.union (re.++ (str.to_re "26") (re.* (str.to_re "3"))) (str.to_re "575")) (str.to_re "52"))))
(assert (str.in_re x (re.union (str.to_re "2") (re.+ (str.to_re "12")))))

(assert (= (+ (* (- 6) (str.to_int x)) (* (- 9) (str.to_int y))) 6))
(assert (>= (+ (* (- 4) (str.len x)) (* (- 4) (str.len y))) 50))

(check-sat)
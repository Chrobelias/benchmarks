(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (re.union (str.to_re "5") (re.* (str.to_re "0"))) (str.to_re "616"))))
(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "0") (str.to_re "30"))) (str.to_re "621"))))

(assert (>= (+ (* (- 3) (str.len x)) (* (- 2) (str.len y))) 5))
(assert (>= (+ (* (- 9) (str.to_int x)) (* (- 4) (str.to_int y))) 7))

(check-sat)
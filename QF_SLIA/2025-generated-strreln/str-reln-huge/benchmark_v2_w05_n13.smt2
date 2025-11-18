(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.++ (re.+ (str.to_re "88")) (str.to_re "63"))))
(assert (str.in_re y (re.++ (re.* (re.++ (str.to_re "92") (re.range "1" "3"))) (str.to_re "3"))))

(assert (> (+ (* 2 (str.to_int x)) (* (- 5) (str.to_int y))) 20))
(assert (<= (+ (* (- 5) (str.to_int x)) (* (- 7) (str.to_int y))) 55))
(assert (<= (+ (* (- 10) (str.len x)) (* 10 (str.to_int y))) 58))
(assert (> (+ (* (- 3) (str.len x)) (* 2 (str.len y))) 60))

(check-sat)
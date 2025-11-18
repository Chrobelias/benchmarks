(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (re.+ (re.range "1" "4")) (str.to_re "735"))))
(assert (str.in_re y (re.++ (re.union (str.to_re "50") (re.+ (str.to_re "5"))) (str.to_re "10"))))

(assert (> (+ (* 6 (str.len x)) (* 4 (str.len y)) (* (- 7) (str.to_int y))) 99))
(assert (<= (+ (* 7 (str.len x)) (* (- 5) (str.len y))) 58))
(assert (<= (* 2 (str.len x)) 24))

(check-sat)
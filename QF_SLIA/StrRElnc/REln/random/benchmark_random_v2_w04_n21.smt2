(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (str.to_re "5") (str.to_re "919")))))
(assert (str.in_re x (re.++ (re.* (str.to_re "45")) (re.union (re.+ (str.to_re "21")) (str.to_re "547")))))

(assert (<= (+ (* (- 2) (str.len y)) (str.to_int x) (* (- 4) (str.to_int y))) 11))
(assert (> (+ (* (- 9) (str.len x)) (* 7 (str.len y))) 58))
(assert (>= (+ (* 6 (str.len x)) (* (- 4) (str.len y))) 14))

(check-sat)
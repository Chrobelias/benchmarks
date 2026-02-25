(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "21") (re.++ (re.++ (re.* (str.to_re "379")) (str.to_re "60")) (str.to_re "71")))))
(assert (str.in_re x (re.union (re.++ (str.to_re "5") (str.to_re "90")) (re.+ (str.to_re "8")))))

(assert (= (+ (* (- 3) (str.len x)) (* (- 6) (str.len y))) 88))
(assert (< (+ (* (- 2) (str.len y)) (* 10 (str.to_int y))) 3))
(assert (< (+ (* 9 (str.len x)) (* (- 9) (str.len y))) 61))

(check-sat)
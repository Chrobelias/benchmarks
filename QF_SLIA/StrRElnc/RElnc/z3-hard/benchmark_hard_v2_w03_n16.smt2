(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "34")))

(assert (str.in_re y (re.* (re.union (str.to_re "0") (re.range "3" "7")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "7")) (re.union (re.+ (re.range "4" "7")) (str.to_re "728")))))

(assert (> (+ (* 5 (str.len x)) (* 6 (str.len y))) 9))
(assert (< (+ (* (- 9) (str.len y)) (* (- 10) (str.to_int x)) (* (- 3) (str.to_int y))) 53))

(check-sat)
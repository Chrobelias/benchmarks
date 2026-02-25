(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (str.to_re "725") (re.* (re.range "6" "8")))))
(assert (str.in_re y (re.union (str.to_re "3") (re.* (re.range "6" "9")))))

(assert (> (+ (str.len y) (* (- 3) (str.to_int y))) 89))
(assert (< (+ (* (- 7) (str.to_int x)) (* (- 6) (str.to_int y))) 0))
(assert (<= (+ (* 8 (str.len x)) (* 3 (str.len y))) 16))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "399") (str.to_re "148"))))))
(assert (str.in_re y (re.* (re.++ (re.* (str.to_re "90")) (re.* (re.range "6" "8"))))))

(assert (>= (+ (* 3 (str.to_int x)) (* (- 7) (str.to_int y))) 88))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 8) (str.to_int y))) 81))
(assert (>= (+ (* (- 10) (str.len y)) (* 9 (str.to_int x)) (* 8 (str.to_int y))) 35))

(check-sat)
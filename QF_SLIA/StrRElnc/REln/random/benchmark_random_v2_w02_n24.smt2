(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (re.* (str.to_re "533")) (str.to_re "333")))))
(assert (str.in_re x (re.* (re.* (re.union (re.range "4" "6") (re.range "3" "6"))))))

(assert (= (+ (* (- 9) (str.to_int x)) (* 2 (str.to_int y))) 33))
(assert (> (+ (* 10 (str.len x)) (* (- 3) (str.len y))) 81))

(check-sat)
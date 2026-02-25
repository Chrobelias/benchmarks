(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "37" x)))

(assert (str.in_re y (re.++ (re.* (re.range "3" "7")) (re.range "7" "9"))))
(assert (str.in_re x (re.* (re.union (str.to_re "49") (str.to_re "273")))))

(assert (>= (+ (* (- 10) (str.len y)) (* (- 8) (str.to_int y))) 84))
(assert (> (+ (* (- 8) (str.len x)) (* 8 (str.len y))) 75))

(check-sat)
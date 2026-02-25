(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "64" x)))

(assert (str.in_re y (re.+ (re.union (re.* (re.* (re.range "1" "6"))) (str.to_re "6")))))
(assert (str.in_re x (re.union (str.to_re "701") (re.union (re.* (re.range "4" "9")) (str.to_re "221")))))

(assert (> (+ (* 5 (str.to_int x)) (* (- 4) (str.to_int y))) 97))
(assert (>= (+ (* (- 5) (str.len x)) (* 5 (str.len y))) 55))

(check-sat)
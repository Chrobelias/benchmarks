(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ "21" x)))

(assert (str.in_re x (re.+ (re.* (re.++ (str.to_re "5") (str.to_re "461"))))))
(assert (str.in_re z (re.+ (re.union (re.++ (str.to_re "5") (str.to_re "491")) (re.range "0" "7")))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "2")) (re.+ (str.to_re "86"))))))

(assert (> (+ (* (- 4) (str.len x)) (* (- 3) (str.len y)) (* 3 (str.to_int y))) 46))

(check-sat)
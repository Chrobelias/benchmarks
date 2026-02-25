(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ y "31") (str.++ "72" x)))

(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "30")) (re.* (re.range "0" "6"))) (str.to_re "67"))))
(assert (str.in_re y (re.* (re.++ (re.+ (re.range "1" "7")) (re.range "3" "9")))))

(assert (>= (+ (* 3 (str.to_int x)) (* (- 7) (str.to_int y))) 40))
(assert (<= (+ (* (- 9) (str.len y)) (* (- 2) (str.to_int x))) 34))

(check-sat)
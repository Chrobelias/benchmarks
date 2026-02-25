(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "66")))

(assert (str.in_re y (re.union (re.++ (re.range "3" "6") (str.to_re "0")) (re.+ (re.range "6" "9")))))
(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "96") (str.to_re "192")) (str.to_re "28")))))

(assert (>= (+ (* (- 5) (str.len x)) (* 6 (str.to_int x))) 99))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 8) (str.to_int y))) 5))
(assert (<= (+ (* (- 7) (str.to_int x)) (* (- 3) (str.to_int y))) 52))

(check-sat)
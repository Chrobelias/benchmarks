(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ y "41") (str.++ "13" x)))

(assert (str.in_re y (re.+ (re.range "1" "4"))))
(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "3") (re.range "1" "5")) (str.to_re "2")))))

(assert (< (+ (* 7 (str.len x)) (* (- 5) (str.len y)) (* 8 (str.to_int x))) 78))

(check-sat)
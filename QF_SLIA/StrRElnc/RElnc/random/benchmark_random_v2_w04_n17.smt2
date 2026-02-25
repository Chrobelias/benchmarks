(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ y "67") (str.++ "63" x)))

(assert (str.in_re x (re.++ (re.++ (str.to_re "235") (re.+ (str.to_re "5"))) (re.* (str.to_re "67")))))
(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "841") (re.range "3" "9")) (re.range "2" "8")))))

(assert (< (+ (* (- 6) (str.len y)) (* 6 (str.to_int y))) 44))
(assert (= (+ (* 6 (str.to_int x)) (* (- 8) (str.to_int y))) 32))
(assert (<= (* (- 10) (str.len y)) 4))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "77") (re.+ (re.range "5" "7"))) (str.to_re "996"))))
(assert (str.in_re y (re.* (re.++ (str.to_re "1") (str.to_re "785")))))

(assert (= (+ (* 9 (str.to_int x)) (* (- 3) (str.to_int y))) 10))
(assert (>= (+ (* 7 (str.len x)) (* 3 (str.len y))) 24))

(check-sat)
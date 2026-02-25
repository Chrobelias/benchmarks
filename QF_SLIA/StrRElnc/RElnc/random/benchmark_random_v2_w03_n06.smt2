(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "15")))

(assert (str.in_re y (re.union (re.* (re.+ (re.range "0" "9"))) (str.to_re "72"))))
(assert (str.in_re x (re.++ (str.to_re "3") (re.union (re.* (str.to_re "931")) (re.range "4" "8")))))

(assert (> (* 8 (str.len x)) 65))
(assert (= (+ (- (str.to_int x)) (* 3 (str.to_int y))) 2))
(assert (> (+ (* (- 7) (str.to_int x)) (* 10 (str.to_int y))) 88))

(check-sat)
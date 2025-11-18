(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.* (re.union (re.++ (re.* (re.range "4" "8")) (re.range "6" "8")) (str.to_re "3")))))
(assert (str.in_re y (re.++ (re.union (str.to_re "69") (re.* (str.to_re "5"))) (re.+ (re.range "6" "8")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "35")) (re.++ (re.range "0" "6") (re.range "6" "8")))))

(assert (= (+ (* 5 (str.len x)) (- (str.len y)) (* (- 5) (str.len z))) 83))
(assert (<= (+ (* 10 (str.to_int x)) (* 9 (str.to_int y)) (* 4 (str.to_int z))) 70))
(assert (<= (+ (* (- 5) (str.len y)) (* 10 (str.len z))) 85))

(check-sat)
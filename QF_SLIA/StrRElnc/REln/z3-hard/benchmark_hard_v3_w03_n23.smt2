(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "696")) (str.to_re "18")))))
(assert (str.in_re x (re.++ (re.union (re.++ (re.+ (str.to_re "282")) (re.range "4" "6")) (str.to_re "371")) (str.to_re "183"))))
(assert (str.in_re z (re.+ (re.* (re.union (str.to_re "2") (str.to_re "133"))))))

(assert (< (+ (* (- 5) (str.to_int x)) (* 7 (str.to_int y)) (* 3 (str.to_int z))) 95))
(assert (= (+ (* 7 (str.len x)) (* (- 5) (str.len y))) 2))
(assert (< (+ (* (- 8) (str.to_int x)) (* 2 (str.to_int y)) (- (str.to_int z))) 6))

(check-sat)
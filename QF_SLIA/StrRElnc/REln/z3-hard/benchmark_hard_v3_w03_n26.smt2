(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.++ (str.to_re "1") (re.* (str.to_re "14"))))))
(assert (str.in_re x (re.+ (re.* (re.range "0" "5")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "73")) (str.to_re "105"))))

(assert (= (+ (* 7 (str.len x)) (* 6 (str.len y)) (* (- 10) (str.len z))) 69))
(assert (< (+ (* 7 (str.to_int x)) (str.to_int y) (* 4 (str.to_int z))) 90))
(assert (>= (+ (* 10 (str.to_int x)) (* 8 (str.to_int y)) (- (str.to_int z))) 1))

(check-sat)
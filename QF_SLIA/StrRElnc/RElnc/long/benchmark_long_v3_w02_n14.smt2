(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (= (str.++ y z) (str.++ "97" x)))

(assert (str.in_re z (re.union (str.to_re "1") (re.++ (re.* (str.to_re "4")) (re.* (str.to_re "51"))))))
(assert (str.in_re x (re.* (re.union (re.+ (re.range "1" "8")) (re.* (re.range "0" "6"))))))
(assert (str.in_re y (re.* (re.range "4" "9"))))

(assert (= (+ (* 8 (str.to_int x)) (* 10 (str.to_int y)) (* 5 (str.to_int z))) 85))
(assert (> (+ (* 6 (str.len x)) (- (str.len y)) (* (- 3) (str.len z))) 43))

(check-sat)
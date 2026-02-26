(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ "67" x)))

(assert (str.in_re y (re.* (re.range "6" "9"))))
(assert (str.in_re x (re.* (re.union (re.range "1" "7") (re.union (re.+ (str.to_re "90")) (str.to_re "46"))))))
(assert (str.in_re z (re.* (re.union (re.union (str.to_re "58") (re.* (re.range "4" "9"))) (re.range "4" "7")))))

(assert (<= (+ (- (str.len x)) (* 7 (str.len y)) (* 2 (str.len z))) 2))
(assert (<= (+ (* (- 6) (str.to_int y)) (* (- 8) (str.to_int z))) 31))

(check-sat)
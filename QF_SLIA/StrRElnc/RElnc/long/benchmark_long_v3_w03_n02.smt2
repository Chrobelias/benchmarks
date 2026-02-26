(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= y (str.++ z "78" x)))

(assert (str.in_re x (re.+ (re.union (re.+ (str.to_re "4")) (re.range "6" "9")))))
(assert (str.in_re y (re.+ (re.union (re.* (str.to_re "598")) (re.range "2" "9")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "72")) (re.* (str.to_re "976")))))

(assert (= (+ (* (- 5) (str.to_int x)) (* 9 (str.to_int y)) (- (str.to_int z))) 95))
(assert (< (+ (* 2 (str.len x)) (* 5 (str.len y)) (* (- 10) (str.len z))) 6))
(assert (< (+ (* 8 (str.to_int y)) (* 3 (str.to_int z))) 59))

(check-sat)
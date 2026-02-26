(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "32" z)))

(assert (str.in_re y (re.* (re.union (str.to_re "62") (re.range "0" "6")))))
(assert (str.in_re x (re.union (str.to_re "37") (re.++ (re.* (str.to_re "20")) (str.to_re "86")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "0") (re.range "6" "8")))))

(assert (< (+ (* 5 (str.to_int x)) (- (str.to_int y)) (* 5 (str.to_int z))) 28))
(assert (= (+ (* 2 (str.len x)) (* 10 (str.len y)) (* 4 (str.len z))) 67))

(check-sat)
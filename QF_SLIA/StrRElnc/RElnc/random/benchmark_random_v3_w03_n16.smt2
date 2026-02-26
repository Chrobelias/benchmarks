(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ "68" z)))

(assert (str.in_re x (re.+ (re.+ (re.union (re.range "4" "9") (str.to_re "348"))))))
(assert (str.in_re z (re.union (str.to_re "1") (re.union (re.* (str.to_re "85")) (re.* (str.to_re "84"))))))
(assert (str.in_re y (re.+ (re.range "3" "9"))))

(assert (>= (+ (* (- 7) (str.len x)) (* 5 (str.len y)) (* (- 5) (str.len z))) 10))
(assert (= (+ (- (str.to_int x)) (* 8 (str.to_int y)) (* (- 6) (str.to_int z))) 47))
(assert (<= (+ (str.len x) (* 7 (str.len y)) (* 3 (str.len z))) 11))

(check-sat)
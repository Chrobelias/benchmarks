(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.++ (re.+ (str.to_re "95")) (str.to_re "0")) (str.to_re "498"))))
(assert (str.in_re y (re.* (re.++ (re.range "2" "9") (re.++ (re.range "7" "9") (re.range "0" "3"))))))
(assert (str.in_re z (re.+ (re.union (re.+ (re.* (re.range "0" "5"))) (str.to_re "13")))))

(assert (= (+ (* 8 (str.len x)) (- (str.len y)) (* 3 (str.len z))) 11))
(assert (> (+ (* 6 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 7) (str.to_int z))) 32))

(check-sat)
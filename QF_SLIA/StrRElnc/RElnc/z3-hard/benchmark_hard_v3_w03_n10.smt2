(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ "63" x)))

(assert (str.in_re z (re.union (str.to_re "64") (re.* (re.* (re.range "0" "6"))))))
(assert (str.in_re y (re.+ (re.* (re.range "4" "9")))))
(assert (str.in_re x (re.union (re.+ (re.++ (re.+ (str.to_re "774")) (str.to_re "56"))) (str.to_re "353"))))

(assert (>= (+ (* (- 9) (str.to_int x)) (- (str.to_int y)) (* 4 (str.to_int z))) 78))
(assert (= (+ (* (- 7) (str.len z)) (- (str.to_int y)) (* 8 (str.to_int z))) 14))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "2")) (re.+ (str.to_re "70"))))))
(assert (str.in_re y (re.* (re.+ (re.++ (re.range "1" "3") (str.to_re "3"))))))
(assert (str.in_re z (re.++ (re.++ (re.range "2" "9") (re.* (str.to_re "7"))) (str.to_re "29"))))

(assert (<= (+ (str.len x) (* 8 (str.len y)) (* (- 8) (str.len z))) 90))
(assert (= (+ (* (- 7) (str.to_int x)) (str.to_int y) (- (str.to_int z))) 42))

(check-sat)
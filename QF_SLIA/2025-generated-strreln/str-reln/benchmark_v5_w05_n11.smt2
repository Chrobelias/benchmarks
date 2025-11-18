(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (str.to_re "50"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "707")) (str.to_re "53"))))
(assert (str.in_re z (re.+ (re.++ (re.+ (str.to_re "4")) (re.* (str.to_re "42"))))))
(assert (str.in_re a (re.* (re.+ (str.to_re "52")))))
(assert (str.in_re b (re.union (re.++ (re.range "0" "4") (re.+ (str.to_re "292"))) (str.to_re "119"))))

(assert (<= (+ (* (- 10) (str.len z)) (* (- 4) (str.len b)) (* (- 6) (str.to_int z))) 23))
(assert (< (+ (* 10 (str.len x)) (* (- 5) (str.len b)) (* 5 (str.to_int a))) 36))
(assert (= (+ (* 6 (str.to_int x)) (* 3 (str.to_int z)) (- (str.to_int a)) (* 4 (str.to_int b))) 44))

(check-sat)
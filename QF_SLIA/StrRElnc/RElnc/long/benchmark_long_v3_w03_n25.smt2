(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ "44" y z) (str.++ x "77")))

(assert (str.in_re x (re.union (re.+ (re.range "0" "7")) (re.++ (str.to_re "93") (str.to_re "45")))))
(assert (str.in_re z (re.++ (re.union (re.+ (str.to_re "27")) (str.to_re "60")) (re.range "3" "7"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "1")) (re.++ (re.range "1" "7") (re.+ (str.to_re "17"))))))

(assert (= (+ (- (str.to_int x)) (* 2 (str.to_int y)) (* 9 (str.to_int z))) 14))
(assert (<= (+ (- (str.len x)) (* (- 9) (str.to_int y))) 94))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ x z) (str.++ "49" y)))

(assert (str.in_re x (re.* (re.union (re.union (re.* (str.to_re "283")) (str.to_re "98")) (re.range "4" "6")))))
(assert (str.in_re z (re.union (re.union (re.* (re.range "0" "9")) (str.to_re "1")) (re.range "3" "7"))))
(assert (str.in_re y (re.union (str.to_re "54") (re.++ (re.+ (str.to_re "643")) (re.* (str.to_re "52"))))))

(assert (>= (+ (* 6 (str.to_int x)) (* (- 9) (str.to_int y)) (* 10 (str.to_int z))) 92))
(assert (< (+ (* (- 4) (str.len x)) (* (- 9) (str.len y)) (* 8 (str.len z))) 92))
(assert (< (+ (- (str.len x)) (* 10 (str.len y)) (* 3 (str.len z))) 19))

(check-sat)
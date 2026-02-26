(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ "67" y)))

(assert (str.in_re z (re.+ (re.++ (re.range "7" "9") (re.+ (str.to_re "65"))))))
(assert (str.in_re x (re.union (re.union (str.to_re "673") (re.* (str.to_re "565"))) (re.* (str.to_re "102")))))
(assert (str.in_re y (re.+ (re.* (re.+ (re.+ (re.range "3" "7")))))))

(assert (< (+ (str.to_int x) (* 5 (str.to_int y)) (* (- 10) (str.to_int z))) 89))
(assert (< (+ (- (str.len x)) (* (- 8) (str.len y)) (* 6 (str.len z))) 83))

(check-sat)
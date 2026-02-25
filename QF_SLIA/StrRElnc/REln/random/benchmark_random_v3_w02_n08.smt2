(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.+ (re.* (re.+ (str.to_re "204"))))))
(assert (str.in_re x (re.* (re.union (re.range "3" "9") (re.+ (re.+ (str.to_re "4")))))))
(assert (str.in_re y (re.union (re.++ (re.* (re.range "0" "2")) (str.to_re "57")) (re.+ (str.to_re "54")))))

(assert (< (+ (* 10 (str.len y)) (* (- 4) (str.len z)) (- (str.to_int z))) 96))

(check-sat)
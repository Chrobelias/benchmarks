(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "419")) (re.union (str.to_re "0") (str.to_re "62")))))
(assert (str.in_re y (re.+ (re.* (re.+ (re.+ (re.range "6" "8")))))))
(assert (str.in_re z (re.* (re.++ (str.to_re "16") (re.* (str.to_re "13"))))))

(assert (<= (+ (* (- 7) (str.to_int x)) (* 9 (str.to_int y)) (* 6 (str.to_int z))) 39))
(assert (>= (+ (* 5 (str.len x)) (* (- 2) (str.len z))) 39))
(assert (< (+ (* 8 (str.to_int x)) (* (- 4) (str.to_int y)) (- (str.to_int z))) 56))

(check-sat)
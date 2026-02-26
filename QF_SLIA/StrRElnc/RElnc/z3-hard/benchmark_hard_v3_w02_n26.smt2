(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ "89" x)))

(assert (str.in_re x (re.* (str.to_re "27"))))
(assert (str.in_re z (re.+ (re.union (re.union (re.range "1" "7") (str.to_re "381")) (str.to_re "62")))))
(assert (str.in_re y (re.* (re.+ (re.union (re.range "0" "9") (str.to_re "409"))))))

(assert (>= (+ (* (- 9) (str.to_int x)) (- (str.to_int y)) (* 4 (str.to_int z))) 29))
(assert (<= (+ (* (- 6) (str.len x)) (* 4 (str.len z))) 87))

(check-sat)
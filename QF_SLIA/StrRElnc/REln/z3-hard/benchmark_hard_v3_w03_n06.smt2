(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "784") (re.++ (str.to_re "30") (re.* (str.to_re "27")))))))
(assert (str.in_re z (re.union (re.range "6" "8") (re.* (re.range "5" "9")))))
(assert (str.in_re y (re.* (str.to_re "188"))))

(assert (= (+ (* 5 (str.len z)) (* 4 (str.to_int x))) 63))
(assert (<= (+ (* 10 (str.to_int x)) (* 6 (str.to_int y)) (str.to_int z)) 55))

(check-sat)
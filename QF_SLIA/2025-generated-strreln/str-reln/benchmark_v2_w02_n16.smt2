(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "284") (re.union (str.to_re "1") (re.union (str.to_re "412") (re.* (str.to_re "9")))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "266")) (re.* (str.to_re "62")))))

(assert (>= (+ (* 6 (str.len x)) (* 3 (str.len y)) (* (- 3) (str.to_int x))) 14))

(check-sat)
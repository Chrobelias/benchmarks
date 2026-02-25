(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "53")))

(assert (str.in_re x (re.union (re.+ (re.range "2" "8")) (str.to_re "1"))))
(assert (str.in_re y (re.union (str.to_re "32") (re.+ (re.union (str.to_re "185") (str.to_re "11"))))))

(assert (> (+ (- (str.to_int x)) (* 9 (str.to_int y))) 36))
(assert (> (+ (* 8 (str.len y)) (* 9 (str.to_int x))) 2))
(assert (> (+ (* 5 (str.to_int x)) (* 7 (str.to_int y))) 73))

(check-sat)
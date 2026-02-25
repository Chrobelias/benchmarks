(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "33") (str.++ y "33")))

(assert (str.in_re y (re.+ (re.++ (re.range "3" "9") (re.* (str.to_re "89"))))))
(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "908")) (str.to_re "174")) (re.+ (str.to_re "9")))))

(assert (>= (+ (- (str.len x)) (* (- 4) (str.len y)) (* 8 (str.to_int x))) 52))
(assert (= (+ (* (- 6) (str.len y)) (* 6 (str.to_int x))) 18))

(check-sat)
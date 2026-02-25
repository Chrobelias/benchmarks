(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (re.union (re.+ (re.range "6" "9")) (str.to_re "46")) (re.range "0" "8"))))
(assert (str.in_re y (re.* (re.++ (str.to_re "295") (re.* (str.to_re "15"))))))

(assert (= (+ (* (- 6) (str.len x)) (* (- 3) (str.len y)) (* 8 (str.to_int y))) 5))
(assert (= (+ (- (str.len x)) (* 10 (str.to_int x))) 46))

(check-sat)
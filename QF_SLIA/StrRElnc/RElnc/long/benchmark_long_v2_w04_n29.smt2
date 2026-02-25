(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "31")))

(assert (str.in_re x (re.* (re.++ (str.to_re "42") (re.* (re.* (str.to_re "89")))))))
(assert (str.in_re y (re.+ (re.union (str.to_re "74") (re.union (re.range "1" "6") (re.* (str.to_re "41")))))))

(assert (= (+ (- (str.len x)) (* (- 9) (str.len y))) 78))
(assert (< (* 2 (str.to_int x)) 56))
(assert (= (+ (* (- 2) (str.to_int x)) (* 5 (str.to_int y))) 50))
(assert (<= (+ (* 5 (str.to_int x)) (str.to_int y)) 26))

(check-sat)
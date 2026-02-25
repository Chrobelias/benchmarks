(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "824")) (re.union (str.to_re "9") (re.+ (str.to_re "0"))))))
(assert (str.in_re y (re.++ (re.range "2" "4") (re.+ (str.to_re "9")))))

(assert (= (+ (str.len x) (* 3 (str.len y))) 57))
(assert (= (+ (* 4 (str.to_int x)) (* (- 2) (str.to_int y))) 90))

(check-sat)